<div class="btn-group-vertical">
    {volist name="sidebarList" id="item"}
        <a href="JavaScript:;" data-href="{$item.path}" title="{$item.text} " class="btn btn-default {$item.id%2 ==0?'btn-info': 'btn-default'}"> <i class="fa fa-fw {$item.icon}"></i> {$item.text} </a>
    {/volist}
</div>
<!-- <?php if( $item['id']%2 ==0 ){echo 'btn-info';}else{ echo 'btn-default';} ?> -->
<!-- <div class="list-group">
    {volist name="sidebarList" id="item"}
        <a href="{$item.path}" title="{$item.text}" class="list-group-item"> <i class="fa fa-fw {$item.icon}"></i> {$item.text} </a>
    {/volist}
</div> -->