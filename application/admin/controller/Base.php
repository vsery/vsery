<?php
namespace app\admin\controller;

use think\Controller;
use think\Request;
use think\Session;
use app\admin\model\Sidebar as SidebarModel;
use app\admin\model\SysTool as SysToolModel;
use app\admin\model\Admin as AdminModel;

class Base extends Controller
{
    public function _initialize()
    {
    }

    // 获取 侧边栏 模型
    public function _getSideBar()
    {
        $sidebar = new SidebarModel();
        return SidebarModel::all();
    }

    // 获取 系统 工具 模型
    public function _getSysTool()
    {
        $SysTool = new SysToolModel();
        return SysToolModel::all();
    }

    // 获取 系统管理员 模型
    public function _getAdminBar()
    {
        $admin = new AdminModel();
        return SidebarModel::all();
    }
}
