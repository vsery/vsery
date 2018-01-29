<?php
namespace app\admin\controller;

use app\admin\controller\Base;
use app\admin\model\Sidebar as SidebarModel;

class Index extends Base
{
    public function index()
    {
        $sidebar = new SidebarModel();
        $sidebarList  = SidebarModel::all();
        $this->assign('sidebarList', $sidebarList);
        return $this->fetch();
    }
}
