<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    '__pattern__' => [ // 全局变量, 规则定义
        'name'    => '\w+', // name: 正则 任意英文字符
        'id'      => '\d+', // id: 正则 任意 数字
        'year'    => '\d{4}', // year: 正则 数字 4位
        'month'   => '\d{2}', // month: 正则 数字 2位
        'date'    => '\d{2}', // date: 正则 数字 2位
        'hours'   => '\d{2}', // hours: 正则 数字 2位
        'minutes' => '\d{2}', // minutes: 正则 数字 2位
        'seconds' => '\d{2}', // seconds: 正则 数字 2位
    ],
    // '[hello]'     => [
    //     ':id'   => ['index/index/hello', ['method' => 'get'], ['id' => '\d+']],
    //     ':name' => ['index/hello', ['method' => 'post']],
    // ],
    // '[blog]'      => [
    //     '/index'      => 'admin/blog/index',
    //     '/create'     => 'admin/blog/create',
    //     '/add'        => 'admin/blog/add',
    //     '/add_list'   => 'admin/blog/addList',
    //     '/update/:id' => 'admin/blog/update',
    //     '/delete/:id' => 'admin/blog/delete',
    //     ':id'         => ['admin/blog/read', ['method' => 'get'], ['id' => '\d+']],
    //     ':name'       => ['admin/blog/read', ['method' => 'post']],
    // ],
    '[admin]' =>[
        '/index' => 'admin/index/index',
        '/blog' => 'admin/blog/index',
        '/book' => 'admin/book/index',
        '/link' => 'admin/link/index',
        '/web/menu' => 'admin/web/index',
        '/web/skin' => 'admin/web/skin',
    ]
];
