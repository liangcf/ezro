<?php
/**
 * @author 梁朝富
 * @mail lcf@jionx.com
 * @function 文件夹操作工具
 */
namespace ezro\core\src\utils;

class DirUtils
{
    /*删除文件夹*/
    public static function  delDir($dirName){
        if ($handle=opendir($dirName)){
            while (false!==($item=readdir($handle))){
                if ($item!="."&&$item!=".."){
                    if (is_dir($dirName.'/'.$item)){
                        self::delDir($dirName.'/'.$item);
                    } else {
                        unlink($dirName.'/'.$item);
                    }
                }
            }
            closedir($handle);
            rmdir($dirName);//删除文件夹
        }
    }

    /*删除文件*/
    public static function  delFile($dirName){
        if ($handle=opendir($dirName)){
            while (false!==($item=readdir($handle))){
                if ($item!="."&&$item!=".."){
                    if (is_dir($dirName.'/'.$item)){
                        self::delDir($dirName.'/'.$item);
                    } else {
                        unlink($dirName.'/'.$item);
                    }
                }
            }
            closedir($handle);
        }
    }
}