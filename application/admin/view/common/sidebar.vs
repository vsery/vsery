<form class="navbar-form navbar-left">
    <div class="form-group">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="请输入...">
            <div class="input-group-btn">
                <button type="submit" class="btn btn-default">
                    <i class="fa fa-fw fa-search"></i>
                    搜索
                </button>
            </div>
        </div>
    </div>
</form>
<ul class="nav navbar-nav navbar-left" id="sidebar">
    <volist name="sidebar" id="option" key="sort">
        <if condition="($option['text'] eq '首页') OR ($option['text'] eq '菜单')">
            <li class="dropdown">
                <a href="{$option.path}" title="{$option.text}">
                    <i class="fa fa-fw {$option.icon}"></i>
                    {$option.text}
                </a>
            </li>
            <else />
            <li class="dropdown">
                <a class="dropdown-toggle"
                    data-toggle="dropdown"
                    role="button"
                    aria-haspopup="true"
                    aria-expanded="false"
                    href="{$option.path}"
                    title="{$option.text}">
                    <i class="fa fa-fw {$option.icon}"></i>
                    {$option.text}
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">创建 - 新{$option.text}</a></li>
                    <li><a href="#">{$option.text} - 列表</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">{$option.text} - 回收站</a></li>
                </ul>
            </li>
        </if>
    </volist>
</ul>