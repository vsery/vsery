<?php
//配置文件
return [
    'view_replace_str' => [
        '__WEB_TITLE__' => 'Vsery 素云阁——莫道相思素清梦，一处云愁载满阁',
        '__WEB_KEY__'   => 'Vsery, Blod, WeiBo 素云阁，视觉设计，产品视觉，网页设计师，罗磊',
        '__WEB_DESC__'  => 'Vsery is wife, 素云阁，产品视觉设计师罗磊的个人网站，用来展示其作品及与同行交流的一个平台!',
        '__PUBLIC__'    => BASE_URL . '/static/public',
        '__ADMIN_TITLE__' => 'Vsery 素云阁——莫道相思素清梦，一处云愁载满阁',
        '__ADMIN_KEY__'   => 'Vsery, Blod, WeiBo 素云阁，视觉设计，产品视觉，网页设计师，罗磊',
        '__ADMIN_DESC__'  => 'Vsery is wife, 素云阁，产品视觉设计师罗磊的个人网站，用来展示其作品及与同行交流的一个平台!',
        '__ADMIN__'     => BASE_URL . '/static/admin',
    ],
    'template'         => [
        // 模板后缀
        'view_suffix' => 'vs',
        'layout_on'     =>  true,
        'layout_name'   =>  'layout',
        'layout_item'   =>  '[__REPLACE__]'
    ],
];