<?php
/**
 * @author 梁朝富
 * @mail lcf@jionx.com
 */


namespace ezro\core\src\db;

use ezro\core\run\GetConfigs;

class Redis
{
    private static $redisObj=array();

    /**
     * @param array $config
     * @return \Redis
     */
    public static function getRedis($config=array()){
        if(empty($config)){
            $config=GetConfigs::runConfigs()['redis'];
        }
        if(isset(self::$redisObj[$config['host'].':'.$config['port']])){
            return self::$redisObj[$config['host'].':'.$config['port']];
        }
        $redis=RedisInstance::initRedis($config);
        self::$redisObj[$config['host'].':'.$config['port']]=$redis->getRedisConn();
        return self::$redisObj[$config['host'].':'.$config['port']];
    }
}