<?php

namespace app\admin\controller;

use app\admin\controller\Base;

class Doc extends Base
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $this->assign('pageAttr', [ '首页', '文档'] );
        
        $base = \think\Loader::controller('base');
        
        $user = $base->_getAdmin();
        $this->assign('user', $user);
        
        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);
        
        $sys_tool = $base->_getSysTool();
        $this->assign('sys_tool', $sys_tool);
        
        return $this->fetch();
    }
}
