<?php

class Ketner_A{
	function encode( $string, $key ){
		$key      = pack('H*', self::getHexKey($key));
		$key_size = strlen($key);
		$iv_size  = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
		$iv       = mcrypt_create_iv($iv_size, MCRYPT_RAND);
		$string   = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key, $string, MCRYPT_MODE_CBC, $iv);
		$string   = $iv . $string;
		$string   = base64_encode($string);

		return $string;
	}
	
	function decode( $string, $key ){
		$key     = pack('H*', self::getHexKey($key));
		$iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
		$string  = base64_decode($string);
		$iv_dec  = substr($string, 0, $iv_size);
		$string  = substr($string, $iv_size);
		$string  = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $string, MCRYPT_MODE_CBC, $iv_dec);
		
		return $string;
	}
	
	function getHexKey( $key, $atChar = "A" ){
		$key = md5($key);
		
		for( $i = 0; $i < strlen($key); $i++ )
			$nkey .= base_convert( ord($key[$i]), 10, 16 );
		
		if( strlen($nkey) > 64 )
			$nkey = substr( $nkey, 0, 64 );
		
		if( strlen($nkey) < 64 ){
			$len = 64-strlen($nkey);
			
			for( $i = 0; $i < $len; $i++ )
				$nkey .= $atChar;
		}
		
		$nkey = strtolower($nkey);
		
		return $nkey;
	}
}

?>