<?php
namespace app\index\controller;
use think\Controller;
use think\Request;
use app\index\model\LinkGroup as LinkGroupModel; // 友情链接 数据模型

class Index extends Controller
{
    public function index()
    {        

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

        $linkList = LinkGroupModel::all();
        foreach ($linkList as $item) {
            $linkCount = LinkGroupModel::get($item->id);
            $linkCount->Link()->where('id',$item->id)->limit(10)->select();
        }        
        $this->assign('linkList', $linkList);
        return $this->fetch();
    }

}
