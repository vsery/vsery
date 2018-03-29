<?php

namespace app\index\controller;

use think\Controller;
use think\Request;
use think\Session;
use app\index\model\User as UserModel; // 管理员 数据模型
use app\index\model\Sidebar as SidebarModel; // 左侧 数据模型
use app\index\model\Tool as ToolModel; // 右侧 数据模型

class base extends Controller
{

    // 获取 系统管理员 模型
    public function _getUser()
    {
        $admin = new UserModel();
        return UserModel::all();
    }

    // 获取 侧边栏 模型
    public function _getSideBar()
    {
        $sidebar = new SidebarModel();
        return SidebarModel::all();
    }

    // 获取 系统 工具 模型
    public function _getTool()
    {
        $SysTool = new ToolModel();
        return ToolModel::all();
    }
    
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }
}
