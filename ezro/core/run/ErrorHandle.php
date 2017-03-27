<?php
/**
 * @author 梁朝富
 * @mail lcf@jionx.com
 * @function 错误处理
 */

namespace ezro\core\run;


class ErrorHandle
{
    public static function redirect(){
        header('location:/error.html');
        exit();
    }
    public static function errorPage($errorInfo,$errorMsg){
        $msg=$errorMsg;
        $info=$errorInfo;
        require __DIR__ . '/../../extra/error-page/error_info.phtml';
        exit;
    }

    public static function error404(){
        ob_clean();
        require __DIR__ . '/../../extra/error-page/404.html';
        exit;
    }

    public static function error500(){
        ob_clean();
        require __DIR__ . '/../../extra/error-page/500.html';
        exit;
    }

    public static function errorConfig(){
        require __DIR__ . '/../../extra/error-page/error_config.html';
        exit;
    }
}