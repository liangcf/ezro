<?php
/**
 * @author 梁朝富
 * @mail lcf@jionx.com
 * @function 控制器常用的方法
 */
namespace ezro\core\src\control;

use ezro\core\src\tool\Factory;
use ezro\core\run\ErrorHandle;
use ezro\core\run\GetConfigs;

abstract class Controller
{
	use TraitController;

	public $_layout='layout';
	public $module='web';

	/*获取application.config.php配置文件中的配置项*/
	protected function getConfigValue($configKey){
		$config=GetConfigs::applicationConfigs();
		return $config[$configKey];
	}
	/*获取run.config.php配置文件中的配置项*/
	protected function getRunConfigValue($configKey){
		$config=GetConfigs::runConfigs();
		return $config[$configKey];
	}

	/*获取get参数*/
	protected function getParameter($key,$default=''){
		if(isset($_GET[$key])){
			return trim($_GET[$key]);
		}else{
			return $default;
		}
	}

	/*获取post参数*/
	protected function postParameter($key,$default=''){
		if(isset($_POST[$key])){
			return trim($_POST[$key]);
		}else{
			return $default;
		}
	}

	/*判断是否是post请求*/
	protected function isPost() {
		if ($_SERVER['REQUEST_METHOD'] == "POST") {
			return true;
		}
		return false;
	}

	/**
	 * 设置session节点
	 * @param $key
	 * @param $value
	 */
	protected function setSessionValue($key, $value) {
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
	protected function getSessionValue($key, $default=null) {
		if(!isset($_SESSION)){
			session_start();
		}
		return isset($_SESSION[$key]) ? $_SESSION[$key] : $default;
	}

	/**
	 * 删除某个session节点的值
	 * @param $key
	 */
	protected function unsetSession($key) {
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
	protected function setValAndExpire($key, $value, $expire) {
		ini_set('session.gc_maxlifetime', $expire);
		session_set_cookie_params($expire);
		if(!isset($_SESSION)){
			session_start();
		}
		$_SESSION[$key] = $value;
	}

	/*简单密码处理*/
	protected function passwordEncrypt($pwd){
		return strtolower(md5(md5(substr(md5(substr(md5($pwd),0,-3)),3))));
	}

	/*获取当前时间*/
	protected function getTime(){
		return date('Y-m-d H:i:s');
	}

	/*获取新uuid*/
	protected function uuid($prefix=null){
		return strtolower(md5(uniqid($prefix.md5(mt_rand()),true)));
	}

	/*报错页面，含带错误提示*/
	protected function errorPage($errorInfo,$errorMsg=null){
		ErrorHandle::errorPage($errorInfo,$errorMsg);
	}
	/*重定向到错误页面*/
	protected function redirectError(){
		ErrorHandle::redirect();
	}

	/*获取dao事例*/
    protected function dbDao($className,$module=null){
		if(empty($module)){
			$module=$this->module;
		}
        return Factory::getDaoObj($className,$module);
    }
	/*获取service事例*/
    protected function serviceObject($className,$module=null){
        if(empty($module)){
            $module=$this->module;
        }
        return Factory::getServiceObj($className,$module);
    }

	/*设置制定的layout页面*/
    protected function setLayout($layMode){
        $this->_layout=$layMode;
    }

	/*调用请求的Action前需要执行的动作*/
	public function beforeRequest(){
	}

	/*调用请求的Action后需要执行的动作*/
	public function afterRequest(){
	}

    /******反射使用的，非Controller内部使用的****************************************************************************/
	public function _init($module){
		$this->module=$module;
	}
    public function _getLayout(){
        return $this->_layout;
    }
    /****************************************************************************************************************/
}