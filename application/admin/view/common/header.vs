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
    <script type="text/javascript" src="__PUBLIC__/javascript/jquery.js"></script>
    <script type="text/javascript" src="__PUBLIC__/bootstrap/bootstrap.js"></script>
</head>

<body>
    <nav class="navbar navbar-static-top" id="top" data-spy="affix" data-offset-top="60">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-menu" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="./admin">Vsery</a>
            </div>
            <div class="collapse navbar-collapse" id="top-menu">
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="请输入...">
                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-default"> <i class="fa fa-fw fa-search"></i> 搜索 </button>
                            </div>
                        </div>
                    </div>
                </form>
                <ul class="nav navbar-nav navbar-left" id="sidebar">
                    <volist name="sidebar" id="option" key="sort">
                        <if condition="($option['text'] eq '首页') OR ($option['text'] eq '菜单')">
                            <li class="dropdown"> <a class="btn btn-default" href="{$option.path}" title="{$option.text}"> <i class="fa fa-fw {$option.icon}"></i> {$option.text} </a> </li>
                            <else />
                            <li class="dropdown">
                                <a class="dropdown-toggle btn btn-default" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="{$option.text}"> <i class="fa fa-fw {$option.icon}"></i> {$option.text} <span class="caret"></span> </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" class="btn btn-default">创建 - 新{$option.text}</a></li>
                                    <li><a href="#" class="btn btn-default">{$option.text} - 列表</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#" class="btn btn-default">{$option.text} - 回收站</a></li>
                                </ul>
                            </li>
                        </if>
                    </volist>
                </ul>
                <div class="list-group" id="sys">
                    <volist name="sys_tool" id="tool">
                        <a href="JavaScript:;" title="{$tool.text}" class="btn btn-default"><i class="fa fa-fw {$tool.icon}"></i> {$tool.text} </a>
                    </volist>
                </div>
                <ul class="nav navbar-nav navbar-right" id="user">
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