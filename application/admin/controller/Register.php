<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;

class register extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        return $this->fetch();
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        // $model = new AdminModel();
        // $list  = AdminModel::paginate(10);
        // $this->assign('list', $list);
        // $model = new SidebarModel();
        // $sidebar  = SidebarModel::all();
        // $this->assign('sidebar', $sidebar);
        // return $this->fetch();

        // $admin = new UserModel;
        // if ($admin->allowField(true)->save(input('post.'))) {
        //     return '用户[ ' . $admin->nickname . ':' . $admin->id . ' ]新增成功';
        // } else {
        //     return $admin->getError();
        // }
        return $this-> fetch('admin/index');
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
