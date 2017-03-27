<?php
include '../ezro/initial/init_list.php';
/**
 * Created by PhpStorm.
 * User: lenovo
 * Date: 2017/3/22
 * Time: 14:07
 */
$k='test';
$time=microtime(true);
for($i=0;$i<100000;$i++){
    $k=__FILE__;
}
p($k.'  ||  __FILE__:'.(microtime(true) - $time));
$time=microtime(true);
for($i=0;$i<100000;$i++){
    $k=dirname(__FILE__);
}
p($k.'  ||  dirname:'.(microtime(true) - $time));
$time=microtime(true);
for($i=0;$i<100000;$i++){
    $k=__DIR__;
}
p($k.'  ||  __DIR__:'.(microtime(true) - $time));