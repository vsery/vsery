<?php
namespace app\admin\controller;

use app\admin\model\Admin;
use think\Controller;
use think\Request;

class Login extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    // 新增用户数据
    public function add()
    {
        $user           = new AdminModel;
        $user->nickname = '流年';
        $user->moblie    = '138381838';
        $user->createtime = strtotime('1977-03-05');
        if ($user->save()) {
            return '用户[ ' . $user->nickname . ':' . $user->id . ' ]新增成功';
        } else {
            return $user->getError();
        }
    }

    public function hello($name='sss')
    {
        return 'hello ' . $name . ', welcome to here';
    }
}
