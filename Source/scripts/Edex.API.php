<?php

/*
    Edex Chat
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
*/

class Edex
{
    public $id;
    public $token;
    public $reciever;

    function __construct ()
    {
        $settings = settings::load ();
        
        define ("ACCOUNTS_DATABASE_FILE",           $settings["AUTH_DIR"]."/".$settings["AUTH_FILE"]);
        define ("ACCOUNTS_DATABASE_ENCRYPTION_KEY", $settings["AUTH_KEY"]);

        define ("BPN_NETWORK_DIRECTORY",            $settings["BPN_DIR"]);
        define ("BPN_ACCOUNTS_NAME_ENCRYPTION_KEY", $settings["BPN_KEY"]);

        define ("SECURITYLIB_CERTIFICATES_KEY",     $settings["CERTIFICATION_KEY"]);
        define ("AES256_ENCRYPTION_KEY",            $settings["AES_ENCRYPTION_KEY"]);

        dir_create ("saved");

        $GLOBALS["usersListY"] = 80;

        $this->reciever = null;

        setTimer (1000, 'Global $edex; if ($edex->reciever != null && $messages = $edex->getMessagesHTML ($edex->getMessages ($edex->reciever))) c("fmMain->messages")->html = $messages;');
    }

    function createBPN ($id)
    {
        Global $BPN;

        $this->id = self::toId ($id);

        $BPN = new BPN ($this->id, BPN_NETWORK_DIRECTORY, settings::get ("CLIENT_VISIBILITY"));

        $size1 = getSizeFixed (EnfestoAuth::get ("localStorage", "routedSize", $this->token));
        $name1 = end (explode (" ", $size1));

        $size2 = getSizeFixed (EnfestoAuth::get ("localStorage", "sendedSize", $this->token));
        $name2 = end (explode (" ", $size2));

        $size3 = getSizeFixed (EnfestoAuth::get ("localStorage", "recievedSize", $this->token));
        $name3 = end (explode (" ", $size3));

        c("fmMain->infSize")->caption = round ($size3, 2)." ".$name3." recieved  |  ".round ($size2, 2)." ".$name2." sended  |  ".round ($size1, 2)." ".$name1." routed  ";

        setTimer (1000, 'Global $edex;
        
        $edex->loadUsersList ();
        $edex->getMessages ();');

        setTimer (10000, 'Global $edex;
        
        $size1 = getSizeFixed (EnfestoAuth::get ("localStorage", "routedSize", $edex->token));
        $name1 = end (explode (" ", $size1));

        $size2 = getSizeFixed (EnfestoAuth::get ("localStorage", "sendedSize", $edex->token));
        $name2 = end (explode (" ", $size2));

        $size3 = getSizeFixed (EnfestoAuth::get ("localStorage", "recievedSize", $edex->token));
        $name3 = end (explode (" ", $size3));

        c("fmMain->infSize")->caption = round ($size3, 2)." ".$name3." recieved  |  ".round ($size2, 2)." ".$name2." sended  |  ".round ($size1, 2)." ".$name1." routed  ";');

        if (settings::get ("CLIENT_VISIBILITY"))
            setTimer (100, 'Global $BPN, $edex;

            $tunnels = $BPN->getTunnels ();

            if (is_array ($tunnels) && count ($tunnels) > 0)
                foreach ($tunnels as $id => $tunnel)
                {
                    $BPN->executeTunnel ($tunnel["tunnel"], $tunnel["packet"]);
                
                    if (!EnfestoAuth::get ("localStorage", "routedSize", $edex->token))
                        EnfestoAuth::set ("localStorage", "routedSize", 0, $edex->token);

                    EnfestoAuth::set ("localStorage", "routedSize", EnfestoAuth::get ("localStorage", "routedSize", $edex->token) + getTextSize (serialize ($tunnel["packet"])), $edex->token);
                }');
    }

    function eaRequest ($n = false)
    {
        EnfestoAuth::createRequestFile (ACCOUNTS_DATABASE_FILE, ACCOUNTS_DATABASE_ENCRYPTION_KEY, array (
            "personalInfo" => true,
            "localStorage" => true
        ));

        if ($n == false)
            EnfestoAuth::auth ();

        else
        {
            shell_exec ('taskkill /f /im EnfestoAuth.jar /T');
            shell_exec ('start EnfestoAuth.jar');
        }
    }

    function getMessages ($userLink = false)
    {
        Global $BPN, $reciever;

        if ($userLink)
        {
            $reciever = self::toId (trim ($userLink));
            
            return EnfestoAuth::get ("localStorage", $reciever."-history", $this->token);
        }

        else
        {
            $list = $BPN->recievePacketsFromPeers ();

            if (is_array ($list))
            {
                if (!EnfestoAuth::get ("localStorage", "recievedSize", $this->token))
                    EnfestoAuth::set ("localStorage", "recievedSize", 0, $this->token);

                EnfestoAuth::set ("localStorage", "recievedSize", EnfestoAuth::get ("localStorage", "recievedSize", $this->token) + getTextSize (serialize ($list)), $this->token);

                foreach ($list as $id => $item)
                {
                    $item = unserialize (Ketner_A::decode ($item, AES256_ENCRYPTION_KEY));

                    $history = EnfestoAuth::get ("localStorage", $item["sender"]."-history", $this->token);

                    $sl = new securityLib (serialize ($item["message"]["message"]). SECURITYLIB_CERTIFICATES_KEY .$this->id.sha1 ($this->id), $item["message"]["certificate"]);
                            
                    if ($sl->checkCertificate ())
                    {
                        $item["message"] = $item["message"]["message"];

                        if ($item["flurexUsed"])
                            $item["message"] = unserialize (Flurex::decode ($item["message"], "FIX:Flurex_". AES256_ENCRYPTION_KEY .$this->id.sha1 ($this->id)));

                        switch ($item["type"])
                        {
                            case "message":
                                $history[] = array
                                (
                                    "author"  => "outside",
                                    "message" => $item["message"],
                                    "time"    => $item["time"],

                                    "type" => $item["type"]
                                );
                            break;

                            case "file":
                                $history[] = array
                                (
                                    "author"      => "outside",
                                    "fileName"    => $item["message"]["fileName"],
                                    "fileContent" => $item["message"]["fileContent"],
                                    "fileHash"    => $item["message"]["fileHash"],
                                    "time"        => $item["time"],

                                    "type" => $item["type"]
                                );

                                if (!file_exists ("saved/".$item["message"]["fileHash"]."~".$item["message"]["fileName"]))
                                    file_put_contents ("saved/".$item["message"]["fileHash"]."~".$item["message"]["fileName"], $item["message"]["fileContent"]);
                            break;

                            case "image":
                                $history[] = array
                                (
                                    "author"      => "outside",
                                    "fileName"    => $item["message"]["fileName"],
                                    "fileContent" => $item["message"]["fileContent"],
                                    "fileHash"    => $item["message"]["fileHash"],
                                    "time"        => $item["time"],

                                    "type" => $item["type"]
                                );

                                if (!file_exists ("saved/".$item["message"]["fileHash"]."~".$item["message"]["fileName"]))
                                    file_put_contents ("saved/".$item["message"]["fileHash"]."~".$item["message"]["fileName"], $item["message"]["fileContent"]);
                            break;
                        }

                        EnfestoAuth::set ("localStorage", $item["sender"]."-history", $history, $this->token);
                    }
                }
            }
        }
    }

    function getMessagesHTML ($messages, $ignoreUsed = false)
    {
        Global $reciever;

        if (settings::get ("MESSAGES_SHOW") > 0)
        {
            for ($i = 0; $i < settings::get ("MESSAGES_SHOW"); $i++)
                $tmp[] = array_pop ($messages);

            $messages = array_reverse ($tmp);
        }

        if (md5 (serialize ($messages)) == $GLOBALS["lastMessages"] && !$ignoreUsed)
            return false;

        else $GLOBALS["lastMessages"] = md5 (serialize ($messages));

$css = "<style>
p
{
    box-shadow: 0 0 40px rgba(0,0,0,0.3);
	
	border-radius: 5px;
	
	width: auto;
	font-size: 18px;
	word-break: break-all;
}

.own
{
    margin-left: 50px;
	
    color: white;
	
    border: 10px solid rgb(35, 147, 211);
    background-color: rgb(35, 147, 211);
}

.outside
{
    margin-right: 50px;
    
    border: 10px solid rgb(238, 238, 238);
    background-color: rgb(238, 238, 238);
}

img
{
    width: 50%;
    height: 50%;
}
</style>";

        foreach ($messages as $id => $message)
        {
            if (!$message["message"] || strlen (strip_tags ($message["message"])) > 0)
            {
                $time1 = "<br><font color=\"gray\" size=2>".$message["time"]."</font>";
                $time2 = "<br><font color=\"white\" size=2>".$message["time"]."</font>";

                switch ($message["type"])
                {
                    case "message":
                        if ($message["author"] == "outside")
                            $html = '<p class="outside">'.str_replace ("\n", "<br>", strip_tags ($message["message"])).$time1."</p>\n".$html;

                        else $html = '<p class="own" align="right">'.str_replace ("\n", "<br>", strip_tags ($message["message"])).$time2."</p>\n".$html;
                    break;

                    case "file":
                        if (!file_exists ("saved/".$message["fileHash"]."~".$message["fileName"]))
                            file_put_contents ("saved/".$message["fileHash"]."~".$message["fileName"], $message["fileContent"]);

                        if ($message["author"] == "outside")
                            $html = '<p class="outside"><a href="saved/'.$message["fileHash"]."~".$message["fileName"].'">'.strip_tags ($message["fileName"])."</a>".$time1."</p>\n".$html;

                        else $html = '<p class="own" align="right"><a href="saved/'.$message["fileHash"]."~".$message["fileName"].'">'.strip_tags ($message["fileName"])."</a>".$time2."</p>\n".$html;
                    break;

                    case "image":
                        if (!file_exists ("saved/".$message["fileHash"]."~".$message["fileName"]))
                            file_put_contents ("saved/".$message["fileHash"]."~".$message["fileName"], $message["fileContent"]);

                        if ($message["author"] == "outside")
                            $html = '<p class="outside"><img src="saved/'.$message["fileHash"]."~".$message["fileName"].'"></img>'.$time1."</p>\n".$html;

                        else $html = '<p class="own" align="right"><img src="saved/'.$message["fileHash"]."~".$message["fileName"].'"></img>'.$time2."</p>\n".$html;
                    break;
                }
            }
        }

        $html = $css."\n\n".$html;

        return $html;
    }

    function sendMessage ($message, $type = "message")
    {
        Global $BPN, $reciever;

        if (!is_array ($message) && strlen (trim ($message)) < 1)
            return false;

        $history = EnfestoAuth::get ("localStorage", $reciever."-history", $this->token);

        switch ($type)
        {
            case "message":
                $history[] = array
                (
                    "author"  => "own",
                    "message" => $message,
                    "time"    => date ("d.m.Y H:i"),

                    "type" => $type
                );
            break;

            case "file":
                $history[] = array
                (
                    "author"      => "own",
                    "fileName"    => $message["fileName"],
                    "fileContent" => $message["fileContent"],
                    "fileHash"    => $message["fileHash"],
                    "time"        => date ("d.m.Y H:i"),

                    "type" => $type
                );
            break;

            case "image":
                $history[] = array
                (
                    "author"      => "own",
                    "fileName"    => $message["fileName"],
                    "fileContent" => $message["fileContent"],
                    "fileHash"    => $message["fileHash"],
                    "time"        => date ("d.m.Y H:i"),

                    "type" => $type
                );
            break;
        }

        EnfestoAuth::set ("localStorage", $reciever."-history", $history, $this->token);

        if (settings::get ("USE_FLUREX_ENCRYPTION"))
            $message = Flurex::encode (serialize ($message), "FIX:Flurex_". AES256_ENCRYPTION_KEY .$reciever.sha1 ($reciever));

        $name = sha1 (rand (1, 9999999));

        $sl = new securityLib (serialize ($message). SECURITYLIB_CERTIFICATES_KEY .$reciever.sha1 ($reciever), $name);
        $sl->createCertificate ("xcm", $name);

        $message = array
        (
            "message"     => $message,
            "certificate" => file_get_contents ($name)
        );

        file_delete ($name);

        $post = Ketner_A::encode (serialize (array (
            "type"    => $type,
            "sender"  => $this->id,
            "message" => $message,
            "time"    => date ("d.m.Y H:i"),

            "flurexUsed" => settings::get ("USE_FLUREX_ENCRYPTION")
        )), AES256_ENCRYPTION_KEY);

        if (!EnfestoAuth::get ("localStorage", "sendedSize", $this->token))
            EnfestoAuth::set ("localStorage", "sendedSize", 0, $this->token);

        EnfestoAuth::set ("localStorage", "sendedSize", EnfestoAuth::get ("localStorage", "sendedSize", $this->token) + getTextSize ($post), $this->token);

        if (count ($BPN->getIdsList ()) > 2 && self::get ("USE_RETRANSLATORS") == true)
        {
            $tunnel = $BPN->createTunnel ($reciever);

            $BPN->sendPacketForTunnel ($tunnel, $post);
        }

        else $BPN->sendPacketToPeer ($reciever, $post);
    }

    function loadUsersList ()
    {
        Global $BPN;

        $users = $BPN->getIdsList ();
        $chats = settings::get ("chats");

        if (count ($users) < 1 || !is_array ($users))
            $users = array ();

        if (count ($chats) < 1 || !is_array ($chats))
            $tmp = array ();

        else
            foreach ($chats as $handle => $value)
                $tmp[] = self::toId ($handle);

        $users = array_merge ($tmp, $users);

        if ($GLOBALS["loadedUsersList"] != md5 (serialize ($users)))
        {
            $GLOBALS["loadedUsersList"] = md5 (serialize ($users));

            foreach ($users as $id => $user)
            {
                $user = self::fromId ($user);

                if (!$GLOBALS[sha1 ($user)] && $user !== false && $users[$id] != $this->id)
                {
                    $GLOBALS[sha1 ($user)]  = true;

                    $new = new TLabel (c("fmMain->menu"));
                    $new->parent = c("fmMain->menu");

                    $new->autoSize = false;

                    $new->x = 8;
                    $new->y = $GLOBALS["usersListY"];
                    $new->w = c("fmMain->menu")->w-16;
                    $new->h = 24;

                    $new->caption = "  ".$user;
                    $new->name    = abs (crc32($user));

                    $new->transparent = false;

                    $new->font        = c("fmMain->name")->font;
                    $new->font->color = clWhite;
                    $new->color       = c("fmMain->caption")->color;

                    $new->layout = tlCenter;

                    $new->onClick = function ($self)
                    {
                        Global $edex;

                        c("fmMain->messages")->html = "";
                        c("fmMain->messages")->clearHistory ();
                        c("fmMain->messages")->repaint ();

                        c("fmMain->message")->visible = true;
                        c("fmMain->messages")->x      = 240;

                        resize::resize_object (c("fmMain->count2"), array (
                            "y" => c($self)->y,
                            "h" => c($self)->h
                        ));

                        $edex->reciever = c($self)->caption;

                        c("fmMain->messages")->html = $edex->getMessagesHTML ($edex->getMessages (c($self)->caption), true);
                    };

                    $new->onMouseenter = function ($self)
                    {
                        c($self)->transparent = 1;
                    };

                    $new->onMouseleave = function ($self)
                    {
                        c($self)->transparent = 0;
                    };

                    if ($chats[$user])
                    {
                        $GLOBALS["usersListY"] += 25;

                        $new = new TShape (c("fmMain->menu"));
                        $new->parent = c("fmMain->menu");

                        $new->x = 9;
                        $new->y = $GLOBALS["usersListY"];
                        $new->w = c("fmMain->menu")->w-16;
                        $new->h = 1;

                        $new->name    = abs (crc32($user))."_ul";

                        $new->penColor = clGreen;

                        $GLOBALS["usersListY"] += 6;
                    }

                    else $GLOBALS["usersListY"] += 32;
                }
            }
        }
    }

    function toId ($id)
    {
        return base64_encode (serialize (array (
            "type"   => "EdexID",
            "id"     => miqCode::encode ($id, BPN_ACCOUNTS_NAME_ENCRYPTION_KEY)
        )));
    }

    function fromId ($id)
    {
        $id = unserialize (base64_decode ($id));

        if (is_array ($id) && $id["type"] == "EdexID")
            return miqCode::decode ($id["id"], BPN_ACCOUNTS_NAME_ENCRYPTION_KEY);

        else return false;
    }
}

class settings
{
    function is ($id)
    {
        $db = new Dataset ("settings.db");

        return $db->isId ($id);
    }

    function get ($id = null)
    {
        $db = new Dataset ("settings.db");

        return $db->get ($id);
    }

    function set ($id, $value)
    {
        $db = new Dataset ("settings.db");

        $db->set ($id, $value);

        $db->save ();
        $db->close ();
    }

    function save ($settings)
    {
        foreach ($settings as $id => $setting)
            self::set ($id, $setting);
    }

    function load ($settings = null)
    {
        if ($settings == null)
        {
            if (!settings::is ("CLIENT_VISIBILITY"))
                settings::set ("CLIENT_VISIBILITY", true);

            if (!settings::is ("USE_FLUREX_ENCRYPTION"))
                settings::set ("USE_FLUREX_ENCRYPTION", true);

            $settings = array
            (
                "BPN_DIR" => self::get ("BPN_DIR"),
                "BPN_KEY" => self::get ("BPN_KEY"),
        
                "AUTH_DIR"  => self::get ("AUTH_DIR"),
                "AUTH_KEY"  => self::get ("AUTH_KEY"),
                "AUTH_FILE" => self::get ("AUTH_FILE"),
        
                "CERTIFICATION_KEY"  => self::get ("CERTIFICATION_KEY"),
                "AES_ENCRYPTION_KEY" => self::get ("AES_ENCRYPTION_KEY"),

                "USE_RETRANSLATORS" => self::get ("USE_RETRANSLATORS"),

                "MESSAGES_SHOW" => self::get ("MESSAGES_SHOW"),

                "CLIENT_VISIBILITY" => self::get ("CLIENT_VISIBILITY"),

                "USE_FLUREX_ENCRYPTION" => self::get ("USE_FLUREX_ENCRYPTION")
            );

            $return = true;
        }

        c("fmSettings->bpn_server")->text  = $settings["BPN_DIR"];
        c("fmSettings->bpn_key")->text     = $settings["BPN_KEY"];

        c("fmSettings->auth_server")->text = $settings["AUTH_DIR"];
        c("fmSettings->auth_file")->text   = $settings["AUTH_FILE"];
        c("fmSettings->auth_key")->text    = $settings["AUTH_KEY"];

        c("fmSettings->cert_key")->text    = $settings["CERTIFICATION_KEY"];
        c("fmSettings->aes_key")->text     = $settings["AES_ENCRYPTION_KEY"];

        c("fmSettings->useRetranslators")->checked = (bool) $settings["USE_RETRANSLATORS"];

        c("fmSettings->mes_show")->text = $settings["MESSAGES_SHOW"];

        c("fmSettings->visibility")->checked = $settings["CLIENT_VISIBILITY"];

        c("fmSettings->useFlurex")->checked = $settings["USE_FLUREX_ENCRYPTION"];

        if ($return)
            return $settings;
    }
}

?>
