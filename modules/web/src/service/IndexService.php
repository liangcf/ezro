<?php
namespace modules\web\src\service;

use ezro\core\src\service\Service;

class IndexService extends Service
{
    public function __construct($mode)
    {
        parent::__construct($mode);
    }
    public function index(){
        return 'testt';
    }

}
