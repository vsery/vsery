<?php

namespace app\index\model;

use think\Model;

class LinkGroup extends Model
{
    // 设置完整的数据表（包含前缀）
    protected $table = 'vs_link_group';
    // 定义关联方法
    public function Link()
    {
        return $this->hasMany('Link');
    }
}
