<?php
namespace app\admin\controller;

use think\Controller;
use think\Request;
use think\Session;
use app\admin\model\Sidebar as SidebarModel;
use app\admin\model\Admin as AdminModel;

class Base extends Controller
{
    public $model_list = [];
    public function _initialize()
    {
        // $sidebar = Admin::get(Session::get('id'));
        // Request::instance()->bind('sidebar',$sidebar);
    }
    public function addModel($key, $value)
    {
        $this->model_list[$key] = $value;
    }
    public function getModel($key)
    {
        return $this->model_list[$key];
    }
}
