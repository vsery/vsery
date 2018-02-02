<div class="btn-group-vertical">
    <volist name="sidebar" id="item">
        <a href="JavaScript:;"
            data-href="{$item.path}"
            title="{$item.text}"
            class="btn btn-default el-button-default {$item.id%2 == 0 ? 'right' : ''}">
                <i class="fa fa-fw {$item.icon}"></i>
                {$item.text}
        </a>
    </volist>
</div>
<div class="list-group">
    <volist name="sidebar" id="option">
        <a href="{$option.path}" title="{$option.text}" class="list-group-item">
            <i class="fa fa-fw {$option.icon}"></i> {$option.text}
            <span class="badge"> {$option.sort} </span>
        </a>
    </volist>
</div>