<?php
/**
 * @author 梁朝富
 * @mail lcf@jionx.com
 * @function cookie操作工具
 */

namespace ezro\core\src\utils;


class SessionUtils
{
    /**
     * 设置session节点
     * @param $key
     * @param $value
     */
    public static function setSessionValue($key, $value) {
        if(!isset($_SESSION)){
            session_start();
        }
        $_SESSION[$key] = $value;
    }

    /**
     * 获取session节点下存储的值
     * @param $key
     * @param null $default
     * @return null string
     */
    public static function getSessionValue($key, $default=null) {
        if(!isset($_SESSION)){
            session_start();
        }
        return isset($_SESSION[$key]) ? $_SESSION[$key] : $default;
    }

    /**
     * 删除某个session节点的值
     * @param $key
     */
    public static function unsetSession($key) {
        if(!isset($_SESSION)){
            session_start();
        }
        if (isset($_SESSION[$key])) {
            unset($_SESSION[$key]);
        }
    }

    /**
     * 设置某个session节点的时间
     * @param $key
     * @param $value
     * @param $expire
     */
    public static function setValAndExpire($key, $value, $expire) {
        ini_set('session.gc_maxlifetime', $expire);
        session_set_cookie_params($expire);
        if(!isset($_SESSION)){
            session_start();
        }
        $_SESSION[$key] = $value;
    }
}