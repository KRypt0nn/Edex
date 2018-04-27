<?php

/*
    Dataset Structures
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

    Project version: 1.0
*/

class Dataset
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

    function remove ($id, $asIs = false) // Удаление значения по ID
    {
        if ($asIs == false)
            $id = sha1 ($id);

        unset ($this->structure[$id]);
    }

    function search ($value) // Поиск ID по значению
    {
        $value = strtolower ($value);

        foreach (self::get () as $id => $val)
        {
            $val = '_'.strtolower ($val);

            if (strpos ((string) $val, (string) $value) !== false)
                $return[] = $id;
        }

        return $return;
    }

    function isId ($id, $asId = false) // Проверка ID на валидность
    {
        if ($asIs == false)
            $id = sha1 ($id);

        return (isset ($this->structure[$id]) && $this->structure[$id]) ? true : false;
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

    function delete () // Удаление структуры
    {
        $this->structure = array ();
    }

    private function compress ($text) // Сжатие строки
    {
        return base64_encode (gzdeflate (serialize ($text), 9));
    }

    private function decompress ($text) // Разжатие строки
    {
        return unserialize (gzinflate (base64_decode ($text)));
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
