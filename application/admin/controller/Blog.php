<?php
namespace app\admin\controller;

use app\admin\controller\Base;
use app\admin\model\Blog as BlogModel; // 友情链接 数据模型

class Blog extends Base
{
    // 获取 友情链接
    public function _getBlog()
    {
        $BLog = new BlogModel();
        return BlogModel::all();
    }

    public function index()
    {
        $this->assign('pageAttr', [ '首页', '博客'] );

        $base = \think\Loader::controller('base');

        $user = $base->_getAdmin();
        $this->assign('user', $user);

        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);

        $sys_tool = $base->_getSysTool();
        $this->assign('sys_tool', $sys_tool);

        $Blog = action('blog/_getBlog');
        $this->assign('webBlog', $Blog);

        return $this->fetch();
    }
}
