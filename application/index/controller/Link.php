<?php

namespace app\index\controller;

use think\Controller;
use think\Request;;
use app\index\model\LinkGroup as LinkGroupModel; // 友情链接 数据模型

class Link extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {      
        $linkList = LinkGroupModel::all();
        foreach ($linkList as $item) {
            $linkCount = LinkGroupModel::get($item->id);
            $linkCount->Link()->where('id',$item->id)->limit(10)->select();
            // dump(true, $linkCount->Link);
        }        
        $this->assign('linkList', $linkList);
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
