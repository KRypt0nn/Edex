<?php

/*
    Enfesto Auth API
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

    -----------------------

    Project version: 2.0
*/

class EnfestoAuth
{
    function createRequestFile ($accsFile = "accounts.db", $accsFileKey = "Hello, World!", $accessRequest = array (), $rsaCheckNum = 7, $rsaKey1 = 17, $rsaKey2 = 143)
    {
        Global $accsFileT, $accsFileKeyT;

        file_put_contents ("EARequest", base64_encode (serialize (array (
            "accsFile"    => $accsFile,
            "accsEncKey"  => $accsFileKey,
            "rsaCheckNum" => $rsaCheckNum,
            "rsaKey1"     => $rsaKey1,
            "rsaKey2"     => $rsaKey2,

            "accessRequest" => $accessRequest
        ))));

        $accsFileT    = $accsFile;
        $accsFileKeyT = $accsFileKey;
    }

    function auth ()
    {
        shell_exec ('taskkill /f /im EnfestoAuth.jar /T');
        shell_exec ('start EnfestoAuth.jar');
    }

    function isAuth ($rsaCheckNum = 7, $rsaKey1 = 113, $rsaKey2 = 143)
    {
        if (file_exists (dirname (param_str (0))."/EARequest_answer"))
        {
            $data = unserialize (base64_decode (file_get_contents (dirname (param_str (0))."/EARequest_answer")));
            file_delete (dirname (param_str (0))."/EARequest_answer");

            $rsaNum      = $data["rsaCheckNum"];
            $accessToken = $data["accessToken"];

            if (bcpowmod ($rsaNum, $rsaKey1, $rsaKey2) == $rsaCheckNum)
                return $accessToken;

            else return false;
        }

        else return false;
    }

    function set ($container, $id, $value, $accessToken)
    {
        Global $accsFileT, $accsFileKeyT;

        $token = unserialize ($accessToken);

        $db = new EADataset ($accsFileT, true);
        $db->setEncryptionKey ($accsFileKeyT);

        $data = $db->get ($token["base"]);

        if ($token[$container] && $data[$container]["accesTokenHash"] == sha1 ($token[$container]))
        {
            $data = $db->get ($token[$container]);

            $data[$id] = $value;

            $db->set ($token[$container], $data);
            
            $db->save ();
            $db->close ();

            return true;
        }

        else return false;
    }

    function get ($container, $id, $accessToken)
    {
        Global $accsFileT, $accsFileKeyT;

        $token = unserialize ($accessToken);

        $db = new EADataset ($accsFileT, true);
        $db->setEncryptionKey ($accsFileKeyT);

        $data = $db->get ($token["base"]);

        if ($token[$container] && $data[$container]["accesTokenHash"] == sha1 ($token[$container]))
        {
            $data = $db->get ($token[$container]);

            return $data[$id];
        }

        else return false;

    }

    function checkToken ($container, $accessToken)
    {
        $token = unserialize ($accessToken);

        return $token[$container] ? true : false;
    }
}

/*
    EADataset Structures
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

    -----------------------

    Project version: 1.0 DN cut edition
*/

class EADataset
{
    private $useEncryption; // Используется ли ключ шифрования
    private $file;          // Файл структуры
    private $key;           // Ключ шифрования
    private $structure;     // Структура

    function __construct ($file, $useEncryption = false)
    {
        self::open ($file);
        self::setEncryptionKey ("DatasetStructuresBasicKey");

        $this->useEncryption = (bool) $useEncryption;
    }

    function open ($file) // Открытие файла структуры
    {
        $this->file = $file;

        if (file_exists ($file))
            $this->structure = self::decompress (file_get_contents ($file));

        else
        {
            file_put_contents ($file, self::compress (array ()));
            
            self::open ($file);
        }
    }

    function setEncryptionKey ($key) // Установка ключа шифрования
    {
        $this->key = $key;
    }

    function set ($id, $value, $asIs = false) // Добавление значения в структуру по ID
    {
        if ($asIs == false)
            $id = sha1 ($id);

        $this->structure[$id] = self::pack ($value);
    }

    function get ($id = null, $asIs = false) // Получение значения по ID (или всех значений, если $id = null)
    {
        if ($id == null)
            return $this->structure;

        else
        {
            if ($asIs == false)
                $id = sha1 ($id);

            return self::unpack ($this->structure[$id]);
        }
    }

    function save ($save = null) // Сохранение структуры
    {
        if ($save == null)
            $save = $this->file;
        
        file_put_contents ($save, self::compress ($this->structure));
    }

    function close () // Закрытие структуры
    {
        unset ($this->useEncryption);
        unset ($this->file);
        unset ($this->key);
        unset ($this->structure);
    }

    private function compress ($text) // Сжатие строки
    {
        return base64_encode (serialize ($text));
    }

    private function decompress ($text) // Разжатие строки
    {
        return unserialize (base64_decode ($text));
    }

    private function xorEnc ($text, $key) // XOR шифрование
    {
        while (strlen ($key) < strlen ($text))
            $key .= $key.sha1 ($key);

        for ($i = 0; $i < strlen ($text); $i++)
            $str .= $text[$i] ^ $key[$i];

        return $str;
    }

    function pack ($text) // Публичное сжатие строки
    {
        if ($this->useEncryption == true)
            return self::compress (self::xorEnc (self::compress ($text), $this->key));

        else return self::compress ($text);
    }

    function unpack ($text) // Публичное разжатие строки
    {
        if ($this->useEncryption == true)
            return self::decompress (self::xorEnc (self::decompress ($text), $this->key));

        else return self::decompress ($text);
    }
}

?>
