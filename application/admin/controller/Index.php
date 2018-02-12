<?php
namespace app\admin\controller;

use app\admin\controller\Base;

class Index extends Base
{
    /**
     * 首页视图
     * @return [html] [模板视图]
     */
    public function index()
    {
        $base    = \think\Loader::controller('base');
        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);
        $sys_tool = $base->_getSysTool();
        $this->assign('sys_tool', $sys_tool);
        return $this->fetch();
    }

    /**
     * 图标视图
     * @return [html] [模板视图]
     */
    public function icons()
    {
        $base    = \think\Loader::controller('base');
        $sidebar = $base->_getSideBar();
        $this->assign('sidebar', $sidebar);
        $sys_tool = $base->_getSysTool();
        $this->assign('sys_tool', $sys_tool);
        return $this->fetch();
    }

    /**
     * 返回周边服务
     * @param  string $query  [中心区域:默认故宫,必传]
     * @param  string $tag    [服务类型:默认银行,可传]
     * @param  string $region [城市:默认北京,必传]
     * @return [JSON]         [数据]
     */
    public function getSearch($query = '故宫', $tag = '银行', $region = '北京')
    {
        $data = \Map::getSearch($query, $tag, $region);
        return $data;
    }

    /**
     * 返回经纬度
     * @param  string $address [地址:默认]
     * @return [JSON]          [数据]
     */
    public function getLocation($address='长沙市雨花区凤凰佳苑')
    {
        $data = \Map::getLocation($address);
        return $data;
    }

    /**
     * 返回详细地址
     * @param  string $location [经纬度]
     * @return [JSON]           [数据]
     */
    public function getAddress($location='39.934,116.329')
    {
        $data = \Map::getAddress($location);
        return $data;
    }

    /**
     * 返回详细地址
     * @param  string $location [经纬度]
     * @return [JSON]           [数据]
     */
    public function send($to, $title, $content)
    {
        \Email::send($to, $title, $content);
        // \Email::send('vsery@163.com', '测试','一封测试邮件');
        // return '发送成功';
    }
}
