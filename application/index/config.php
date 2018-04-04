<?php
return [
    'view_replace_str' => [
        '__WEB_TITLE__' => 'Vsery 素云阁——莫道相思素清梦，一处云愁载满阁',
        '__WEB_KEY__'   => 'Vsery, Blod, WeiBo 素云阁，视觉设计，产品视觉，网页设计师，罗磊',
        '__WEB_DESC__'  => 'Vsery is wife, 素云阁，产品视觉设计师罗磊的个人网站，用来展示其作品及与同行交流的一个平台!',
        '__LOGO__'      => 'Vsery',
        '__PUBLIC__'    => BASE_URL . '/static/public',
        '__INDEX__'     => BASE_URL . '/static/index',
    ],
    'template'         => [
        // 模板后缀
        'layout_name'  => 'main',
        'layout_item'  => '<replace-main></replace-main>',
        'tpl_begin'    => '{', // 模板引擎普通标签开始标记
        'tpl_end'      => '}', // 模板引擎普通标签结束标记
        'taglib_begin' => '<', // 标签库标签开始标记
        'taglib_end'   => '>', // 标签库标签结束标记
        'layout_on'    => true,
        'view_suffix' => 'htm', // 模板后缀
        
    ],
];
