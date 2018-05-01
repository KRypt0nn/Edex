<?php

/*
    FES | Flurex Encryption System
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

    Project version: 1.0
*/

class Flurex
{
	function encode ($text, $key, $keySize = 64, $blockSize = 2000)
	{
		if (strlen ($text) > $blockSize && $blockSize > 0)
		{
			$blocks = str_split ($text, $blockSize);

			foreach ($blocks as $id => $block)
				$blocks[$id] = "(".base64_encode (gzdeflate (self::encode ($block, $key, $id%16+1, -1), 9)).")";
				
			return implode ("\n", $blocks);
		}
	
		else
		{
			$key = self::keyType ($key, $keySize);
			
		    $text = self::randomlyPack ($text, (sqrt (sqrt ($key)) + $keySize) % 24 + 1);
			$text = self::mapMove ($text, $key, 1);

			for ($i = 0; $i < strlen ($text); $i++)
			{
				if ($blockSize <= 0 && $i == 0)
				{
					$pos = 32;
					
					$str .= "W32 ";
				}
					
				elseif (($i % $key[rand (0, strlen ($key)-1)]+1 == 0 || rand (1, 20) == 10 || $i == 0) && $blockSize > 0)
				{
					$pos = rand (4, 32);

					$str .= "W".$pos." ";
				}

				$char = ord ($text[$i]);

				$char *= ($key[$i % strlen ($key)] + 1);
				$char -= $key[$i % strlen ($key)] % $char;

				$char = pow ($char, ($key[$i % strlen ($key)] % 2 + 1));

	            $str .= strrev (base_convert ($char, 10, $pos))." ";
			}

			$str = strtoupper (trim ($str));
			$str = self::countEncode ($str);

			return $str;
		}
	}

	function decode ($text, $key, $keySize = 64)
	{
		$blocks = explode ("\n", $text);
		
		if (count ($blocks) > 1 && is_array ($blocks))
		{
			foreach ($blocks as $id => $block)
				$blocks[$id] = self::decode (gzinflate (base64_decode (substr ($block, 1))), $key, $id%16+1);
				
			return implode ("", $blocks);
		}
		
		else
		{
			$key  = self::keyType ($key, $keySize);
		    $text = self::countDecode ($text);

		    $text = explode (" ", $text);

		    $i = 0;

		    foreach ($text as $id => $char)
		    {
				if ($char[0] == "W")
					$pos = substr ($char, 1);

				else
				{
			        $char = base_convert (strrev ($char), $pos, 10);

			        $char = pow ($char, 1/($key[$i % strlen ($key)] % 2 + 1));

			        $char += $key[$i % strlen ($key)] % $char;
			        $char /= ($key[$i % strlen ($key)] + 1);

			        $str .= chr ($char);

			        $i++;
		        }
		    }

		    $str = self::mapMove ($str, $key, 2);
		    $str = self::unpack ($str, (sqrt (sqrt ($key)) + $keySize) % 24 + 1);

		    return $str;
	    }
	}

	protected function keyType ($text, $keySize = 256)
	{
		for ($i = 0; $i < strlen ($text); $i++)
			$str .= ord ($text[$i]);

		while (strlen ($str) < $keySize)
			$str .= $str;

		$text = substr ($str, 0, $keySize);

        $text = str_replace (0, 1, $text);

		return $text;
	}

	protected function mapMove ($text, $key, $mode)
	{
		switch ($mode)
		{
			case 1:
				for ($i = 0; $i < strlen ($text); $i++)
					$text = self::swap ($text, $i, $key[$i % strlen ($key)] % strlen ($text));
			break;

			case 2:
				for ($i = strlen ($text)-1; $i >= 0; $i--)
					$text = self::swap ($text, $key[$i % strlen ($key)] % strlen ($text), $i);
			break;
		}

		return $text;
	}

	protected function countEncode ($text)
	{
		$count = 0;

		for ($i = 0; $i < strlen ($text); $i++)
		{
			if ($text[$i] == $text[$i-1])
				$count++;

			else
			{
				if ($count > 3)
					$str = substr ($str, 0, -1).$text[$i-1]."`".$count."~";

				elseif ($count > 1)
					for ($j = 1; $j < $count; $j++)
						$str .= $text[$i-1];

				$str .= $text[$i];

				$count = 1;
			}
		}

		if ($count > 1)
			$str = substr ($str, 0, -1).$text[strlen ($text)-1]."`".$count."~";

		return $str;
	}

	protected function countDecode ($text)
	{
		for ($i = 0; $i < strlen ($text); $i++)
		{
			if($text[$i] == "`")
			{
				for ($j = $i+1; $j < strlen ($text); $j++)
					if ($text[$j] == "~")
						break;

				$num = substr ($text, $i+1, $j);

				for ($k = 1; $k < $num; $k++)
					$str .= $text[$i-1];

				$i = $j;
			}

			else $str .= $text[$i];
		}

		return $str;
	}

	protected function randomlyPack ($text, $n = 5)
	{
		for ($i = 0; $i < $n; $i++)
			$text = self::randomlySwap ($text);

		$packers = array
		(
			"gzcompress",
			"bzcompress",
			"gzdeflate"
		);

		while (!$packers[$packer])
			$packer = rand (0, 9999999) % count ($packers);

		return $packer.base64_encode ($packers[$packer] ($text, rand (1, 9)));
	}

	protected function unpack ($text, $n = 5)
	{
		$unpackers = array
		(
			"gzuncompress",
			"bzdecompress",
			"gzinflate"
		);
		
		$unpacker = $text[0] % count ($unpackers);
		$text 	  = substr ($text, 1);
		
		$text = base64_decode ($text);

		$text = $unpackers[$unpacker] ($text);

		for ($i = 0; $i < $n; $i++)
			$text = self::unswap ($text);

		return $text;
	}

	protected function randomlySwap ($text)
	{
		$otext = $text;

		while (!$st || self::unswap ($text) != $otext)
		{
			$text = $otext;

			$p1 = rand (0, round (strlen ($text)/2)-1);
			$p2 = rand (round (strlen ($text)/2)-1, strlen ($text)-1);

			if ($p1 == $p2)
			{
				$p1--;
				$p2++;
			}

			$st = strrev (substr ($text, $p1, $p2));

			for ($i = $p1; $i <= $p2; $i++)
				$text[$i] = $st[$i-$p1];

			$text = $p1." ".$p2." ".$text;
		}

		return $text;
	}

	protected function unswap ($text)
	{
		$res = explode (" ", $text);
	    $p1  = $res[0];
	    $p2  = $res[1];

		unset ($res[0], $res[1]);

	    $text = implode (" ", $res);
		$st   = strrev (substr ($text, $p1, $p2));

		for ($i = $p1; $i <= $p2; $i++)
			$text[$i] = $st[$i-$p1];

		return $text;
	}

	protected function swap ($arr, $a, $b)
	{
		$c = $arr[$a];

		$arr[$a] = $arr[$b];
		$arr[$b] = $c;

		return $arr;
	}
}

?>
