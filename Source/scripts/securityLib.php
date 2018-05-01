<?php

/*
    securityLib - a simple class to generate certificates
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
*/

class securityLib
{

    private $key;
    private $certificate;

    function __construct ($key, $certificate = null)
    {
        $this->key = $key;

        if ($certificate)
            self::loadCertificate ($certificate);
    }

    function loadCertificate ($file)
    {
        if (is_file ($file))
            $certificate = file_get_contents ($file);

        else $certificate = $file;

        $this->certificate = self::decompress (substr (str_replace ("\n", '', $certificate), 39, -39));
    }

    function createCertificate ($algorithm, $save, $params = array ())
    {
        switch ($algorithm)
        {
            case "xcm":
                file_put_contents ($save, self::convertToCertificateType (self::compress (array (
                    "algorithm" => "xcm",
                    "data"      => self::xorenc (self::xorenc (sha1 ($this->key), sha1 ($this->key)), $this->key)
                ))));
            break;

            case "xcm2":
                $data = self::compress (array (
                    "data"   => sha1 ($this->key),
                    "params" => $params
                ));

                $data = self::xorenc (self::xorenc ($data, sha1 ($this->key)), $this->key);
                $hash = self::getHash ($data);

                if ($nonce = self::findNonce ($hash, abs (crc32 ($this->key)), strlen ($this->key)))
                {
                    file_put_contents ($save, self::convertToCertificateType (self::compress (array (
                        "algorithm" => "xcm2",
                        "hash"      => $hash,
                        "nonce"     => $nonce,
                        "data"      => $data
                    ))));

                    return true;
                }

                else return false;
            break;

            case "rsa":
                file_put_contents ($save, self::convertToCertificateType (self::compress (array (
                    "algorithm" => "rsa",
                    "data" => easyRSA::create_paint (self::compress (array (
                        "hash"   => sha1 ($this->key),
                        "params" => $params
                    )), $this->key)
                )), 60));
            break;

            case "rsa2":
                file_put_contents ($save, self::convertToCertificateType (self::compress (array (
                    "algorithm" => "rsa2",

                    "data1" => easyRSA::create_paint (self::compress (array (
                        "hash"   => sha1 ($this->key),
                        "params" => $params
                    )), $this->key),

                    "data2" => easyRSA::encode (self::compress (array (
                        "hash"   => sha1 ($this->key),
                        "params" => $params
                    )), $this->key),
                )), 100));
            break;

            case "xcm2+rsa":
                $data = easyRSA::create_paint (self::compress (array (
                    "hash"   => sha1 ($this->key),
                    "params" => $params
                )), $this->key);

                $data = self::xorenc (self::xorenc ($data, sha1 ($this->key)), $this->key);
                $hash = self::getHash ($data);

                if ($nonce = self::findNonce ($hash, abs (crc32 ($this->key)), strlen ($this->key)))
                {
                    file_put_contents ($save, self::convertToCertificateType (self::compress (array (
                        "algorithm" => "xcm2+rsa",
                        "hash"      => $hash,
                        "nonce"     => $nonce,
                        "data"      => $data
                    )), 80));

                    return true;
                }

                else return false;
            break;

            case "fcm":
                file_put_contents ($save, self::convertToCertificateType (self::compress (array (
                    "algorithm" => "fcm",
                    "data" => Flurex::encode (self::compress (array (
                        "hash"   => sha1 ($this->key),
                        "params" => $params
                    )), $this->key)
                )), 60));
            break;
        }
    }

    function checkCertificate ($returnParams = false)
    {
        $cert = $this->certificate;

        $alg  = $cert["algorithm"];
        $data = $cert["data"];

        switch ($alg)
        {
            case "xcm":
                if (self::xorenc (self::xorenc ($data, $this->key), sha1 ($this->key)) == sha1 ($this->key))
                    return true;

                else return false;
            break;

            case "xcm2":
                $res  = self::xorenc (self::xorenc ($data, $this->key), sha1 ($this->key));
                $res  = self::decompress ($res);

                if ($res["data"] == sha1 ($this->key))
                {
                    $nonce = $cert["nonce"];
                    $hash  = $cert["hash"];

                    if (self::checkHash ($hash, $nonce, abs (crc32 ($this->key)), strlen ($this->key)))
                    {
                        if (self::getHash ($data) == $hash)
                        {
                            if ($res["params"]["date"])
                            {
                                if ($res["params"]["date"] > time ())
                                {
                                    if ($returnParams)
                                        return $res["params"];

                                    else return true;
                                }

                                else return false;
                            }

                            else
                            {
                                if ($returnParams)
                                    return $res["params"];

                                else return true;
                            }
                        }

                        else return false;
                    }

                    else return false;
                }

                else return false;
            break;

            case "rsa":
                if ($data = self::decompress (easyRSA::check_paint ($data, $this->key)))
                {
                    if ($data["hash"] == sha1 ($this->key))
                    {
                        if ($data["params"]["date"])
                        {
                            if ($data["params"]["date"] > time ())
                            {
                                if ($returnParams)
                                    return $data["params"];

                                else return true;
                            }

                            else return false;
                        }

                        else
                        {
                            if ($returnParams)
                                return $data["params"];

                            else return true;
                        }
                    }

                    else return false;
                }

                else return false;
            break;

            case "rsa2":
                $data1 = self::decompress (easyRSA::check_paint ($cert["data1"], $this->key));
                $data2 = self::decompress (easyRSA::decode ($cert["data2"], $this->key));

                if ($data1 && $data2)
                {
                    if ($data1["hash"] == sha1 ($this->key) && serialize ($data1) == serialize ($data2))
                    {
                        if ($data1["params"]["date"])
                        {
                            if ($data1["params"]["date"] > time ())
                            {
                                if ($returnParams)
                                    return $data1["params"];

                                else return true;
                            }

                            else return false;
                        }

                        else
                        {
                            if ($returnParams)
                                return $data1["params"];

                            else return true;
                        }
                    }

                    else return false;
                }

                else return false;
            break;

            case "xcm2+rsa":
                $res  = self::xorenc (self::xorenc ($data, $this->key), sha1 ($this->key));
                $res  = self::decompress (easyRSA::check_paint ($res, $this->key));

                if ($res["hash"] == sha1 ($this->key))
                {
                    $nonce = $cert["nonce"];
                    $hash  = $cert["hash"];

                    if (self::checkHash ($hash, $nonce, abs (crc32 ($this->key)), strlen ($this->key)))
                    {
                        if (self::getHash ($data) == $hash)
                        {
                            if ($res["params"]["date"])
                            {
                                if ($res["params"]["date"] > time ())
                                {
                                    if ($returnParams)
                                        return $res["params"];

                                    else return true;
                                }

                                else return false;
                            }

                            else
                            {
                                if ($returnParams)
                                    return $res["params"];

                                else return true;
                            }
                        }

                        else return false;
                    }

                    else return false;
                }

                else return false;
            break;

            case "fcm":
                if ($data = self::decompress (Flurex::decode ($data, $this->key)))
                {
                    if ($data["hash"] == sha1 ($this->key))
                    {
                        if ($data["params"]["date"])
                        {
                            if ($data["params"]["date"] > time ())
                            {
                                if ($returnParams)
                                    return $data["params"];

                                else return true;
                            }

                            else return false;
                        }

                        else
                        {
                            if ($returnParams)
                                return $data["params"];

                            else return true;
                        }
                    }

                    else return false;
                }

                else return false;
            break;
        }
    }

    function getCertificate ($typed = false)
    {
        if ($typed)
            return self::convertToCertificateType (self::compress ($this->certificate));

        else return $this->certificate;
    }

    function convertToCertificateType ($cert, $size = 39)
    {
        return "---------- CERTIFICATE BEGIN ----------\n".implode ("\n", str_split ($cert, $size))."\n----------- CERTIFICATE END -----------";
    }

    # ---------- вспомогательные функции ----------

    function compress ($text)
    {
        return base64_encode (gzdeflate (serialize ($text), 9));
    }

    function decompress ($text)
    {
        return unserialize (gzinflate (base64_decode ($text, 9)));
    }

    private function xorenc ($text, $key)
    {
        $hash = self::getHash ($key);

        while (strlen ($key) < strlen ($text))
            $key .= $key . $hash;

        for ($i = 0; $i < strlen ($text); $i++)
            $str .= $text[$i] ^ $key[$i];

        return $str;
    }

    private function findNonce ($hash, $a, $b, $deepEdge = 0.0001, $deep = 1)
    {
        if ($deep < $deepEdge)
            return false;

        else
        {
            for ($i = 1; $i < round (sqrt ($hash)); $i += $deep)
                if (self::checkHash ($hash, $i, $a, $b))
                    return $i;

            self::findNonce ($hash, $a, $b, $deep * 0.1, $deepEdge);
        }
    }

    function getHash ($text)
    {
        $preHash = sha1 (self::compress ($text));
        $sum     = 0;

        for ($i = 0; $i < strlen ($preHash); $i++)
            $sum += ord ($preHash[$i]);

        return ($sum + abs (crc32 ($preHash))) - strlen ($this->key);
    }

    private function checkHash ($hash, $nonce, $a, $b)
    {
        if (
            round ($hash%$nonce) % $a == $b &&
            strlen ($hash) % 2 == strlen ($nonce) % 2
        )
            return true;

        else return false;
    }
}

class easyRSA
{
    function encode ($text, $key, $a = 17)
    {
        $text = securityLib::compress ($text);

        for ($i = 0; $i < strlen ($text); $i++)
            $enc .= bcpowmod (ord ($text[$i]), $a, 143) * securityLib::getHash ($key) . ' ';

        return trim ($enc);
    }

    function decode ($text, $key, $a = 113)
    {
        $text = explode (' ', $text);

        foreach ($text as $id => $char)
            $dec .= chr (bcpowmod (($char / securityLib::getHash ($key)), $a, 143));

        return securityLib::decompress ($dec);
    }

    function create_paint ($text, $key)
    {
        return self::encode (self::encode ($text, $key), $key, 113);
    }

    function check_paint ($text, $key)
    {
        if ($data = self::decode (self::decode ($text, $key, 17), $key))
            return $data;

        else return false;
    }
}

?>
