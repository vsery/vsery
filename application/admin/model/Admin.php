<?php

namespace app\admin\model;

use think\Model;

// 后台 管理员 数据 模型
class Admin extends Model
{
    // 设置完整的数据表（包含前缀）
    protected $table = 'vs_admin_user';
}
