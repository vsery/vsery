<?php
namespace app\index\controller;
use think\Controller;
use think\Request;

use app\index\controller\Base;
use app\index\model\User as userModel;
use app\index\model\LinkGroup as LinkGroupModel; // 友情链接 数据模型

class Index extends Controller
{
    public function index()
    {        
        $this->assign('pageAttr', [ '首页', '主页'] );
        $user = userModel::get(1);
        $this->assign('user', $user);

        $base = \think\Loader::controller('base');

        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);

        $sys_tool = $base->_getTool();
        $this->assign('sys_tool', $sys_tool);


        $linkList = LinkGroupModel::all();
        foreach ($linkList as $item) {
            $linkCount = LinkGroupModel::get($item->id);
            $linkCount->Link()->where('id',$item->id)->limit(10)->select();
        }        
        $this->assign('linkList', $linkList);
        return $this->fetch();
    }

    public function link()
    {        
        $this->assign('pageAttr', [ '首页', '主页'] );
        $user = userModel::get(1);
        $this->assign('user', $user);

        $base = \think\Loader::controller('base');

        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);

        $sys_tool = $base->_getTool();
        $this->assign('sys_tool', $sys_tool);

        $linkList = LinkGroupModel::all();
        foreach ($linkList as $item) {
            $linkCount = LinkGroupModel::get($item->id);
            $linkCount->Link()->where('id',$item->id)->limit(10)->select();
        }        
        $this->assign('linkList', $linkList);
        return $this->fetch();
    }

}
