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
}
