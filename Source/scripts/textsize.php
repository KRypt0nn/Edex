<?php

function getTextSize ($text)
{
    $file = sha1 ($text);
    file_put_contents ($file, $text);

    $filesize = filesize ($file);
    file_delete ($file);

    return $filesize;
}

function getSizeFixed ($filesize)
{
    if ($filesize > 1024)
    {
        $filesize = ($filesize/1024);

        if ($filesize > 1024)
        {
            $filesize = ($filesize/1024);

            if ($filesize > 1024)
            {
                $filesize = ($filesize/1024);
                $filesize = round ($filesize, 1);

                return $filesize." GBytes";    
            }
            else
            {
                $filesize = round ($filesize, 1);
                
                return $filesize." MBytes";   
            }
        }

        else
        {
            $filesize = round ($filesize, 1);

            return $filesize." KBytes";   
        }
    }

    else
    {
        $filesize = round ($filesize, 1);

        return $filesize." Bytes";   
    }
}

?>
