<?php
namespace app\admin\controller;

use app\admin\controller\Base;

class Index extends Base
{
    public function index()
    {
        $base = \think\Loader::controller('base');
        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);
        $sys_tool = $base->_getSysTool();
        $this->assign('sys_tool', $sys_tool);
        return $this->fetch();
    }
    public function icons()
    {
        return $this->fetch();
    }
}
