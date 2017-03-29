<?php
/**
 * @author 梁朝富
 * @mail lcf@jionx.com
 * @function 入口
 */
namespace ezro\core\run;

class Application
{
    private static $runMode;
    private static $config;
    private static $baseRoot;

    public static function init(){
        self::$config=GetConfigs::runConfigs();
        self::$runMode=isset(self::$config['run_mode'])?self::$config['run_mode']:false;
        self::$baseRoot=__DIR__.'/../../..';
        return new self();
    }
    /**
     * 入口
     * @throws \Exception
     */
    public function run(){
        $this->initHeader();
        $this->handleException();
        $this->view($this->route());
    }

    /*拼装路由*/
    private function route(){
        $_reqUri=$_SERVER['REQUEST_URI'];
        $_index=strpos($_reqUri,'?');
        $_uri=$_index>0?substr($_reqUri,0,$_index):$_reqUri;
        if(stripos($_uri,'index.php')){
            exit('no access!');
        }
        $action=self::$config['route'];
        if($_uri=='/'){
            return $action;
        }
        $pathArr=explode('/',trim($_uri,'/'));
        if(isset($pathArr[0])){
            $_module=$pathArr[0];
        }else{
            $_module=$action['_module'];
        }
        if(isset($pathArr[1])){
            $controller=$pathArr[1];
        }else{
            $controller=$action['_controller'];
        }
        if(isset($pathArr[2])){
            $_action=$pathArr[2];
        }else{
            $_action=$action['_action'];
        }
        return array('_module'=>$_module,'_controller'=>$controller,'_action'=>$_action);
    }

    /*转到view*/
    private function view($action){
        (new View())->view($this->action($action));
    }
    /*实例化控制器返回数据*/
    private function action($action){
        $_module=strtolower($action['_module']);
        $_action=strtolower($action['_action']);
        /* 组装类路径 */
        $_className='modules\\'.$_module.'\\src\\controller\\'.ucfirst($action['_controller']).'Controller';
        $_funName=$_action.'Action';
        if(!class_exists($_className)){
            throw new \Exception($_className.":Controller in not found",404);
        }
        $parameter['module']=$_module;
        /* @var $moduleObj object*/
        $moduleObj=new $_className($parameter);
        if(!method_exists($moduleObj,$_funName)){
            throw new \Exception($_funName.':undefined in--'.$_className,500);
        }
        /*反射*/
        $whole['before']=$moduleObj->beforeRequest();
        $whole['data']=$moduleObj->$_funName();
        $whole['after']=$moduleObj->afterRequest();
        $layout=$moduleObj->_getLayout();
        $_controller=strtolower($action['_controller']);
        $wholes['layout']=self::$baseRoot.'/modules/'.$_module.'/view/layout/'.strtolower($layout);
        /* 寻找视图文件的路径 */
        $wholes['view_dir']=self::$baseRoot.'/modules/'.$_module.'/view/'.$_module.'/'.$_controller.'/'.$_action;
        $wholes['view_diy']=self::$baseRoot.'/modules/'.$_module.'/view/'.$_module.'/'.$_controller.'/';
        return array('whole'=>$whole,'wholes'=>$wholes);
    }

    private function initHeader(){
        header('Content-Type: text/html; charset=UTF-8');
    }

    /**
     * 异常处理参考
     * @url:https://github.com/zhangbaitong/plume
     * -------------- 异常处理函数 ----------------
     **/

    //非开发环境全局处理error(warning)，exception,shutdown
    private function handleException(){
        if(self::$runMode!==true){
            error_reporting(E_ERROR | E_WARNING | E_PARSE);
            set_error_handler(array($this,'error_function'));
            set_exception_handler(array($this,'exception_function'));
            register_shutdown_function(array($this,'shutdown_function'));
        }
    }

    //1=>'ERROR', 2=>'WARNING', 4=>'PARSE', 8=>'NOTICE'
    public function error_function($errno, $errstr, $errfile, $errline, $errcontext){
        /*log*/
        self::logs('error_function','error_function',array('errno' => $errno,'errstr' => $errstr, 'errfile' => $errfile, 'errline' => $errline, 'errcontext' => $errcontext));
        ErrorHandle::error404();
    }

    /**
     * @param $e \Exception
     */
    public function exception_function($e){
        self::logs('exception_function','exception_function',$e->getMessage());
        if($e->getCode()==404){
            ErrorHandle::error404();
        }else{
            ErrorHandle::error500();
        }
        exit;
    }

    public function shutdown_function(){
        $error = error_get_last();
        if(!empty($error)){
            self::logs('shutdown_function','shutdown_function',$error);
        }
        exit;
    }

    private static function logs($file,$message,$context){
        $dir=self::$baseRoot.'/data/logs/error_exception/';
        if(!is_dir($dir)){
            mkdir($dir,0777,true);
        }
        if(!is_string($context)){
            $context=json_encode($context);
        }
        $fileName=$dir.$file.'_'.date('Y-m-d').'.log';
        $date=date('Y-m-d H:i:s');
        $log='['.$date.'] - '.$message.' - '.$context."\r\n\r\n";
        return file_put_contents($fileName, $log,FILE_APPEND);
    }
}