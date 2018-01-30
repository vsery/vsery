<?php if (!defined('THINK_PATH')) exit(); /*a:8:{s:60:"E:\Vsery\PHP\public/../application/admin\view\index\index.vs";i:1517296219;s:67:"E:\Vsery\PHP\public/../application/admin\view\common\page-header.vs";i:1517281298;s:66:"E:\Vsery\PHP\public/../application/admin\view\common\top-navbar.vs";i:1517281867;s:68:"E:\Vsery\PHP\public/../application/admin\view\common\left-sidebar.vs";i:1517297181;s:71:"E:\Vsery\PHP\public/../application/admin\view\common\page-breadcrumb.vs";i:1516764546;s:66:"E:\Vsery\PHP\public/../application/admin\view\common\right-menu.vs";i:1517277721;s:63:"E:\Vsery\PHP\public/../application/admin\view\common\page-js.vs";i:1517282054;s:67:"E:\Vsery\PHP\public/../application/admin\view\common\page-footer.vs";i:1517278614;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <title>__WEB_TITLE__</title>
    <meta name="Keywords" content="__WEB_KEY__">
    <meta name="Description" content="__WEB_DESC__">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="__PUBLIC__/style/animate.css">
    <link rel="stylesheet" type="text/css" href="__PUBLIC__/bootstrap/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="__PUBLIC__/fonts/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="__ADMIN__/style/main.css">
    <!--[if lt IE 9]>
        <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container" id="app">
    <nav class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Vsery</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入...">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Vsery - <span class="help-text">管理员</span> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">消息</a></li>
                        <li><a href="#">设置</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">注销</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
    <div class="row">
        <div class="col-xs-12 col-sm-2 col-md-1 col-lg-1" id="sidebar">
            <div class="btn-group-vertical">
    <?php if(is_array($sidebarList) || $sidebarList instanceof \think\Collection || $sidebarList instanceof \think\Paginator): $i = 0; $__LIST__ = $sidebarList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
        <a href="JavaScript:;" data-href="<?php echo $item['path']; ?>" title="<?php echo $item['text']; ?> " class="btn btn-default <?php echo $item['id']%2==0?'btn-info': 'btn-default'; ?>"> <i class="fa fa-fw <?php echo $item['icon']; ?>"></i> <?php echo $item['text']; ?> </a>
    <?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<!-- <?php if( $item['id']%2 ==0 ){echo 'btn-info';}else{ echo 'btn-default';} ?> -->
<!-- <div class="list-group">
    <?php if(is_array($sidebarList) || $sidebarList instanceof \think\Collection || $sidebarList instanceof \think\Paginator): $i = 0; $__LIST__ = $sidebarList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
        <a href="<?php echo $item['path']; ?>" title="<?php echo $item['text']; ?>" class="list-group-item"> <i class="fa fa-fw <?php echo $item['icon']; ?>"></i> <?php echo $item['text']; ?> </a>
    <?php endforeach; endif; else: echo "" ;endif; ?>
</div> -->
        </div>
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8" id="main">
            <UL class="el-breadcrumb">
    <li class="el-breadcrumb__item">
        <span class="el-breadcrumb__item__inner">
            首页
        </span>
        <span class="el-breadcrumb__separator"> / </span>
    </li>
    <li class="el-breadcrumb__item">
        <span class="el-breadcrumb__item__inner">页面列表</span>
        <!-- <span class="el-breadcrumb__separator">/</span> -->
    </li>
</UL>
        </div>
        <div class="col-xs-12 col-sm-2 col-md-1 col-lg-1" id="sys">
            <div data id="systemmenu" class="open">
    <a title="打开系统菜单" class="el-button-default icon"><i class="fa fa-fw fa-bars"></i></a>
    <a title="全屏显示" class="el-button-default icon"><i class="fa fa-fw fa-arrows"></i></a>
    <a title="个人信息" class="el-button-default icon"><i class="fa fa-fw fa-eye"></i></a>
    <a title="性能检测" class="el-button-default icon"><i class="fa fa-fw fa-desktop"></i></a>
    <a title="欣赏音乐" class="el-button-default icon"><i class="fa fa-fw fa-music"></i></a>
    <a title="时间日期" class="el-button-default icon"><i class="fa fa-fw fa-clock-o"></i></a>
    <a title="WebQQ" class="el-button-default icon"><i class="fa fa-fw fa-qq"></i></a>
    <a title="微信登录" class="el-button-default icon"><i class="fa fa-fw fa-qrcode"></i></a>
    <a title="反馈意见" class="el-button-default icon"><i class="fa fa-fw fa-paper-plane-o"></i></a>
    <a title="退出系统" class="el-button-default icon"><i class="fa fa-fw fa-power-off"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-flag"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-camera"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-wechat"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-heartbeat"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-cloud"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-address-book"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-rebel"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-wordpress"></i></a>
    <a title="" class="el-button-default icon"><i class="fa fa-fw fa-home"></i></a>
</div>
        </div>
    </div>
</div>
<div id="background-box">
    <iframe src="__PUBLIC__/page/background/backgroundPage_3.html"></iframe>
</div>
<script type="text/javascript" src="__PUBLIC__/javascript/jquery.js"></script>
<script type="text/javascript" src="__PUBLIC__/bootstrap/bootstrap.js"></script>    
</body>
</html>