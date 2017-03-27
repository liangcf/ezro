<?php
/**
 * @author 梁朝富
 * @mail lcf@jionx.com
 * @function 数据反射
 */
namespace ezro\core\run;

class MainRun{
	
    private static $objects = array();

    public static function runMethod($className,$method,$module){
        try {
            if(!isset(self::$objects[$className])){
                self::$objects[$className]=new $className();
            }
            self::$objects[$className]->_init($module);
            $whole['before']=self::$objects[$className]->beforeRequest();
            if(!method_exists(self::$objects[$className],$method)){
                throw new \Exception($method.':undefined',500);
            }
            $whole['data']=self::$objects[$className]->$method();
            $whole['after']=self::$objects[$className]->afterRequest();
            $whole['layout']=self::$objects[$className]->_getLayOut();
            return $whole;
        } catch (\Exception $e) {
            throw new \Exception($className.'-- is not found in MainRun:runMethod,message:'.$e->getMessage(),500);
        }
    }
}