<div class="list-group" data-spy="affix">
    <volist name="sys_tool" id="tool">
        <a class="list-group-item" href="{:url($tool.path)}" title="{$tool.text}"><i class="fa fa-fw {$tool.icon}"></i> {$tool.text} </a>
    </volist>
</div>