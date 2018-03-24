<?php
namespace app\index\controller;


use think\Controller;

// use app\index\model\User as UserModel;
use app\admin\model\Link as LinkModel; // 友情链接 数据模型
use think\Request;

class Index extends Controller
{

    /**
     * 渲染模板
     * @return [type] [description]
     */
    public function index()
    {        
        $link = action('_getLink');
        $this->assign('webLink', $link);

        return $this->fetch();
    }

    /**
     * 获取友情链接数组
     * @return [type] [返回所有数据]
     */
    public function _getLink()
    {
        $Link = new LinkModel();
        return LinkModel::all();
    }
}
