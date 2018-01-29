<?php
namespace app\admin\model;
use think\Db;
use think\Model;

class Admin extends Model
{
    // 设置完整的数据表（包含前缀）
    protected $table = 'vs_admin_user';
}
