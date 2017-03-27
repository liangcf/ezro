<?php
namespace modules\web\src\controller;

use ezro\core\src\control\Controller;
use ezro\core\src\utils\LogUtils;
use ezro\core\src\utils\QRCodeUtils;
use ezro\core\src\utils\VerifyCode;

class IndexController extends Controller
{

    public function indexAction(){
//        $this->errorPage('网络错误！请重试','网络错误');
        try{
            /*设置layout指向layout.mobile*/
//            $this->setLayout('test');
//            $this->view('kkk');
            $tTime=$_SERVER['REQUEST_TIME'];
            /*测试二维码生成工具*/
            $patch=$_SERVER['DOCUMENT_ROOT'];
            $res=QRCodeUtils::createQRCode($this->uuid(),'http://weixin.qq.com/r/HOIIEFjERwU4rRxz97cO',$patch.'/qr_code',false,$patch.'/img/wx_logo.jpg');
//            $res=QRCodeUtils::createQRCode($this->uuid(),'http://qm.qq.com/cgi-bin/qm/qr?k=RNJWNqoys5CLhvmf9ECM12_YnjCRVn3Y',$patch.'/qrCode',false,$patch.'/img/qq_logo.jpg');
            $qrCode=stristr($res,'/qr_code/');
//            $qrCode=null;
            /*获取配置文件方法*/
            $res1=$this->getConfigValue('my_array');
            /* @var $indexService \modules\web\src\service\IndexService*/
            $indexService=parent::serviceObject('IndexService');
            $indexRet=$indexService->index();
//            p($indexRet);
//            p($res1);die;
            $userDao=parent::dbDao('UsersDao');
            /*根据id查询数据*/
            $res2=$userDao->selectId('a0acd183542b0d2ab2d52291171aef0b');
            /*查看phone表所有数据*/
            $phoneDao=parent::dbDao('PhoneDao');
            $phone=$phoneDao->selectAll();
//            $phone=array();
            /*查询--第二个数据库的所有数据,使用的时候建议不要在同一个service上使用*/
            $stuDao=parent::dbDao('StuDao');

            $res3=$stuDao->selectAll();
//            p(parent::uuid());die;
//            p($res3);
            /*
             * TODO :: 更多查询 MysqliInstance.php
             */

            /*测试日志工具*/
//            LogUtils::log('test','这是正常的测试','错误的内容--'.time());
//            LogUtils::log('kkk','这是正常的测试','错误的内容--'.time());
            /*模糊查询方法*/
            $ret3=$userDao->like('name','郁',array(),array('sort_order'=>'desc'),1,2,array('name','content','sort_order'));
            /*邮件发送测试*/
//            $t=EmailUtils::sendEmail('ownziji@163.com','这里是密码','2271176865@qq.com','这是测试的邮件系统的','这是测试的内容，系统级别的');
            //p($t);
            //p($t);

            /*测试redis的*/
//            $redis=RedisUtils::getRedis($redisConfig);//此方法需要自己关闭redis
//            p($redis->get('ufoahc_test'));
//            RedisUtils::closeRedis();
//            $redis=Redis::getRedis();
//            p($redis->get('ufoahc_test'));
//            $redis2=Redis::getRedis();
//            p($redis2->get('ufoahc_test'));
            $userDao->count();
            $userDao->min('sort_order');
            $userDao->max('sort_order');
            $userDao->avg('sort_order');
            $userDao->sum('sort_order');
            $dbRunTime='访问数据库的时间：'.(microtime(true) - $tTime);
            return $this->result(array('date_test'=>date('Y-m-d H:i:s'),'my_result'=>$res2,'ret'=>$ret3,'db_time'=>$dbRunTime,'phone'=>$phone,'qr_code'=>$qrCode,'title'=>'uf-tt'))->response();
        }catch (\Exception $e){
            LogUtils::log('test','异常',$e->getMessage());
            echo '网络错误！重试！';
            exit();
        }
    }
    public function testAction(){
        $this->api();
        VerifyCode::yzmCode();
    }
    //测试表格的
    public function indexsAction(){
        $objPHPExcel = new \PHPExcel();
        //设置excel的属性：
        //创建人
        $objPHPExcel->getProperties()->setCreator("admin")
            //最后批改人
            ->setLastModifiedBy("admin")
            //题目
            ->setTitle("Office 2007 XLSX Test Document")
            //题目
            ->setSubject("Office 2007 XLSX Test Document")
            //描述
            ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
            //关键字
            ->setKeywords("office 2007 openxml php")
            //种类
            ->setCategory("Test result file");
        //——————————————————————————————————————–
        //设置当前的sheet
        $objPHPExcel->setActiveSheetIndex(0);
        //设置sheet的name
        $objPHPExcel->getActiveSheet()->setTitle("测试表格内标题");

        //Excel表格式,这里简略写了8列
        $letter = array('A','B','C','D','E','F','G','H','I','J');
        //表头数组   '序号','红包所属环节',	'发放时间','状态','设置总个数','已领取个数','已退回个数','设置总金额','已领取总金额','应退回总金额'
        $tableheader = array('序号','红包所属环节',	'发放时间','状态','设置总个数','已领取个数','已退回个数','设置总金额','已领取总金额','应退回总金额');
        //填充表头信息
        for($i = 0;$i < count($tableheader);$i++) {
            $objPHPExcel->getActiveSheet()->setCellValue("$letter[$i]1","$tableheader[$i]");
        }

        //表格数组
        $data = array(
            array('1','小王','男','20','100'),
            array('2','小李','男','20','101'),
            array('3','小张','女','20','102'),
            array('4','小赵','女','20','103')
        );
        //填充表格信息
        for ($i = 2;$i <= count($data) + 1;$i++) {
            $j = 0;
            foreach ($data[$i - 2] as $key=>$value) {
                $objPHPExcel->getActiveSheet()->setCellValue("$letter[$j]$i","$value");
                $j++;
            }
        }

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename=测试表格.xlsx');
        header('Cache-Control: max-age=0');
// If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

// If you're serving to IE over SSL, then the following may be needed
        header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
        header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header ('Pragma: public'); // HTTP/1.0
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
        $objWriter->save('php://output');
        exit;
    }
}
