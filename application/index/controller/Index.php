<?php
namespace app\index\controller;

use app\index\model\User as UserModel;
use think\Controller;

use think\Request;


class Index extends Controller
{
    public function index()
    {        
        return $this->fetch();
    }
    public function hello($id='999', $name = 'World')
    {
        $request = Request::instance();
        // 获取当前URL地址 不含域名
        echo 'url: ' . $request->url() . '<br/>';
        return 'Hello,' . $id . '！'. $name;
    }
}
