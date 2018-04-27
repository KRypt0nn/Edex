<?php

/*
    Enfesto Bit Points Network
    Copyright © 2018  Podvirnyy Nikita (KRypt0n_)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

    and

    Enfesto Studio Group license
    https://vk.com/topic-113350174_36400959

    -----------------------

    Contacts:

    Email: <suimin.tu.mu.ga.mi@gmail.com>
    VK:    vk.com/technomindlp
           vk.com/hphp_convertation

    Project version: 0.2

    Need for work:
    - DStructure.php
    - Ketner_A.php
*/

class BPN
{

    protected $datacenter;
    protected $id;
    protected $key;

    function __construct ($id, $datacenter = null, $isServer = false)
    {
        if ($datacenter == null)
            $datacenter = dirname (param_str (0));

        $this->id         = $id;
        $this->datacenter = $datacenter;
        $this->key        = self::getKey ();

        if ($isServer == true)
            self::putIdToList ($id);
    }

    # ---------- IDs Manipulations

    function getIdsList ()
    {
        $db = new Dataset ($this->datacenter."/idsList.db", true);
        $db->setEncryptionKey ("dbList");

        foreach ($db->get() as $id => $el)
            $return[] = $db->unpack ($el);

        $db->close ();

        return $return;
    }

    protected function putIdToList ($id)
    {
        $db = new Dataset ($this->datacenter."/idsList.db", true);
        $db->setEncryptionKey ("dbList");

        $db->set ($id, $id);

        $db->save ();
        $db->close ();
    }

    protected function removeIdFromList ($id)
    {
        if ($id == 0)
            $id = $this->id;

        $db = new Dataset ($this->datacenter."/idsList.db", true);
        $db->setEncryptionKey ("dbList");

        $db->remove ($id);

        $db->save ();
        $db->close ();
    }

    # ---------- Packets Manipulations

    function sendPacketToPeer ($id, $packet, $enc = true)
    {
        $db = new Dataset ($this->datacenter."/".$id."-packetsRecieving.db", true);
        $db->setEncryptionKey ("dbPackets");

        if ($enc == true)
            $packet = Ketner_A::encode (self::onionEncrypt ($packet, $this->key), $this->key);

        $db->set ($this->id."=>".md5 (serialize ($packet)), $packet);

        $db->save ();
        $db->close ();
    }

    function recievePacketsFromPeers ($delete = true)
    {
        $db = new Dataset ($this->datacenter."/".$this->id."-packetsRecieving.db", true);
        $db->setEncryptionKey ("dbPackets");

        $packets = $db->get ();

        if (is_array ($packets))
            foreach ($packets as $id => $packet)
            {
                $packet = $db->unpack ($packet);
                $packet = self::onionDecrypt (Ketner_A::decode ($packet, $this->key), $this->key);

                $return[] = $packet;

                $db->remove ($id, 1);
            }

        $db->save ();
        $db->close ();

        if ($delete == true)
            file_delete ($this->datacenter."/".$this->id."-packetsRecieving.db");

        return $return;
    }

    # ---------- Keys Manipulations

    protected function getKey ()
    {
        return "{".sha1 ("#$%^&$%GUEEFT".date ("Ym"))."}";
    }

    # ---------- Tunnels Manipulations

    function createTunnel ($reciever, $retranslatorsMinCount = null)
    {
        if ($retranslatorsMinCount == null)
            $retranslatorsMinCount = round (sqrt (count (self::getIdsList ())));

        $peers = self::getIdsList ();
        $cp    = rand ($retranslatorsMinCount, count ($peers));

        $tunnel[] = $reciever;

        for ($i = 0; $i < $cp; $i++)
        {
            $rec = $peers[rand (0, count ($peers)-1)];

            while ($rec == $reciever || $rec == $this->id)
                $rec = $peers[rand (0, count ($peers)-1)];

            $tunnel[] = $rec;
        }

        return $tunnel;
    }

    function sendPacketForTunnel ($tunnel, $packet)
    {
        self::executeTunnel ($tunnel, Ketner_A::encode (self::onionEncrypt ($packet, $this->key), $this->key));
    }

    function executeTunnel ($tunnel, $packet)
    {
        $id  = count ($tunnel)-1;
        $rec = $tunnel[$id];
        unset ($tunnel[$id]);

        if (count ($tunnel) > 0)
            self::sendPacketToPeer ($rec, array (
                "type"   => "tunnel",
                "tunnel" => $tunnel,
                "packet" => $packet
            ), false);

        else self::sendPacketToPeer ($rec, $packet, false);
    }

    function getTunnels ()
    {
        $db = new Dataset ($this->datacenter."/".$this->id."-packetsRecieving.db", true);
        $db->setEncryptionKey ("dbPackets");

        $packets = $db->get ();

        if (is_array ($packets))
            foreach ($packets as $id => $packet)
            {
                $packet = $db->unpack ($packet);

                if (is_array ($packet))
                    if ($packet["type"] == "tunnel")
                    {
                        $return[] = $packet;

                        $db->remove ($id, 1);
                    }
            }

        $db->save ();
        $db->close ();

        return $return;
    }

    # ---------- Onion Encryption Manipulations

    protected function onionEncrypt ($text, $key)
    {
        /*$text = base64_encode (serialize ($text));
        $text = strrev ($text);

        return implode (sha1 ($key), str_split ($text, 8));*/

        return base64_encode (serialize ($text));
    }

    protected function onionDecrypt ($text, $key)
    {
        /*$text = explode (sha1 ($key), $text);

        $text = strrev ($text);
        $text = unserialize (base64_decode ($text));

        return $text;*/

        return unserialize (base64_decode ($text));
    }

    # ---------- The End

    function close ()
    {
        self::__destruct ();

        shell_exec ("taskkill /F /PID ". getmypid () ." /T");
    }

    function __destruct ()
    {
        file_delete ($this->datacenter."/".$this->id."-packetsRecieving.db");

        self::removeIdFromList ($this->id);
    }
}

?>
