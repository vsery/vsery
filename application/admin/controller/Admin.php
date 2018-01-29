<?php
namespace app\admin\controller;

use app\admin\controller\Base;
use app\admin\model\Sidebar as SidebarModel;
use app\admin\model\Admin as AdminModel;

class Admin extends Base
{
    public function index()
    {
        $admin = new AdminModel();
        $adminList  = AdminModel::paginate(10);
        $this->assign('adminList', $adminList);

        $sidebar = new SidebarModel();
        $sidebarList  = SidebarModel::all();
        $this->assign('sidebarList', $sidebarList);
        return $this->fetch();
    }
}
