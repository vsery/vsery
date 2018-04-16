<?php

namespace app\admin\controller;

use think\Request;
use think\Db;
use think\Controller;

use app\admin\controller\Base;
use app\admin\model\WebMenu as WebMenuModel; // 友情链接 数据模型

class Web extends Base
{
    // 获取 所有菜单
    public function _getAllMenu()
    {
        $menu = new WebMenuModel();
        return WebMenuModel::all();
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    { 
        $this->assign('pageAttr', ['主页设置', '菜单管理'] );

        $base = \think\Loader::controller('base');

        $user = $base->_getAdmin();
        $this->assign('user', $user);

        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);
        
        $sys_tool = $base->_getSysTool();
        $this->assign('sys_tool', $sys_tool);

        // $menu = WebMenuModel::paginate(10,false);
        $menu = WebMenuModel::all();
        $this->assign('webMenu', $menu);

        return $this->fetch();
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
    public function read($id = '')
    {
        $this->assign('pageAttr', ['主页设置', '菜单管理'] );

        $base = \think\Loader::controller('base');

        $user = $base->_getAdmin();
        $this->assign('user', $user);

        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);
        
        $sys_tool = $base->_getSysTool();
        $this->assign('sys_tool', $sys_tool);

        $menu = WebMenuModel::get($id);
        dump($menu->toArray());
        // $menuList = $menu->visible(['id', 'sort', 'text', 'icon', 'icon', 'path', 'style', 'fun', 'createtime', 'remark'])->toArray();
        $menuList = collection($menu)->toArray();
        $this->assign('webMenu', $menuList);
        return $this->fetch();
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
