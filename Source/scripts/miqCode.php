<?php

/*

    ------------------------------------------------------------------------------

    miqCode 1.0 | Symmetric Encryption Algorithm

    Copyright © 2018.
    Enfesto' Studio Group. All rights reserved.
    Author: Podvirnyy Nikita ( KRypt0n_ )

    ------------------------------------------------------------------------------

    Contacts:
        email: <suimin.tu.mu.ga.mi@gmail.com>
        vk:    http://vk.com/technomindlp

    ------------------------------------------------------------------------------

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

    ------------------------------------------------------------------------------

*/

class miqCode
{
    function encode ($text, $key, $subEncode = true) // Шифрование текста
    {
        /*err_no (); // Просто надо... :)

        $key  = self::massKey ($key); // Увеличиваем ключ

        $text = self::subencode ($text, $key);  // Сжимаем строку
        $text = self::cez_encode ($text, $key); // Первичная обработка текста

        if ($subEncode)
            $text = self::miqEnc ($text, $key); // Промежуточное шифрование

        $text = self::tableCrypt ($text, $key); // Вторичная обработка текста*/

        return self::subencode ($text, $key); // Возвращаем сжатую строку
    }

    function decode ($text, $key, $subEncode = true) // Дешифрование текста
    {
        /*err_no (); // Иначе будет ругаться gzinflate

        $text = self::subdecode ($text, $key); // Разжимаем строку
        $key  = self::massKey ($key);          // Увеличиваем ключ

        $text = self::tableCrypt ($text, $key); // Первичная обработка текста

        if ($subEncode)
            $text = self::miqDec ($text, $key); // Промежуточное дешифрование

        $text = self::cez_decode ($text, $key); // Вторичная обработка текста*/
        $text = self::subdecode ($text, $key);  // Разжимаем строку

        return $text;
    }

    private function massKey ($key) // Увеличение размера ключа без потери информации
    {
        $key = preg_replace ('/[^a-z_A-Z_а-я_А-Я_0-9]/', '', $key); // Удаляем лишние символы из ключа

        return $key.sha1 ($key).crc32 ($key).md5 ($key);
    }

    private function cez_encode ($text, $key) // Шифрование по шифру цезаря под ключ
    {
        # Проходим по каждому символу текста
        for ($i = 0; $i < strlen ($text); $i++)
            $str .= chr (self::atRange (
                1,
                256,
                ord ($text[$i]) + ord ($key[self::atRange (0, strlen ($key), $i*$i)])
            )); // Шифруем по методу шифра цезаря

        return $str;
    }

    private function cez_decode ($text, $key) // Дешифрование по шифру цезаря под ключ
    {
        # Проходим по каждому символу текста
        for ($i = 0; $i < strlen ($text); $i++)
            $str .= chr (self::atRange (
                1,
                256,
                ord ($text[$i]) - ord ($key[self::atRange (0, strlen ($key), $i*$i)])
            )); // Дешифруем по методу шифра цезаря

        return $str;
    }

    private function miqEnc ($text, $key) // Шифрование по мультиалфавитному методу
    {
        $usedChars = array (); // Массив использованных символов
        $map       = array (); // Алфавит для расшифрования

        # Проходимся по тексту
        for ($i = 0; $i < strlen ($text); $i++)
        {
            $char = chr (rand (1, 255));

            while ($usedChars[$char]) // Ищем незанятый символ
                $char = chr (rand (1, 255));
            
            $str .= $char;

            $usedChars[$char] = true;      // Занимаем этот символ
            $map[$char]       = $text[$i]; // Добавляем символ в алфавит
        }

        // Возвращаем алфавит и зашифрованный текст
        return self::tableCrypt (serialize (array (
            $map,
            $str
        )), $key);
    }

    private function miqDec ($text, $key) // Дешифрование по мультиалфавитному методу
    {
        $res  = unserialize (self::tableCrypt ($text, $key));
        $map  = $res[0];
        $text = $res[1];

        for ($i = 0; $i < strlen ($text); $i++)
            $str .= $map[$text[$i]];

        return $str;
    }

    private function subencode ($text, $key) // Сжатие текста
    {
        $text = base64_encode (gzdeflate ($text, 9)); // Сжимаем строку
        $text = strtr ($text, '+/=', '._-');          // Переводим Base64 в URL-Base64
        
        return $text;
    }

    private function subdecode ($text, $key) // Разжатие текста
    {
        $text = strtr ($text, '._-', '+/=');       // Переводим URL-Bae64 в обычный Base64
        $text = gzinflate (base64_decode ($text)); // Разжимаем строку

        return $text;
    }

    private function tableCrypt ($text, $key) // Табличное симметричное шифрование / дешифрование
    {
        $se  = $text;
        $str = NULL; 
    
        while (strlen ($key) < strlen ($se)) // Увеличиваем ключ до размера строки
            $key .= $key;

        # Проход по каждому символу текста
        for ($i = 0; $i < strlen ($se); $i++)
            $str .= chr (ord ($se[$i]) ^ ord ($key[$i])); // Обрабатываем текст ключём

        return $text = $str;
    }

    private function atRange ($from, $to, $num) // Перевод числа в диапазон [$from; $to]
    {
        if ($num >= $to)
            $num = $from;

        if ($num < $from)
            $num = $from;

        return $num;
    }
}

?>