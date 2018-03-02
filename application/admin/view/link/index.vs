<div id="page-wrapper">
    <div class="row">
        <h1 class="page-header">友情链接</h1>
    </div>
    <include file="common/breadcrumb" />
    <div class="row">
        <div class="col-lg-3">
            <ul class="list-group">
                <volist name="webLink" id="option" key="sort" mod="4">
                    <eq name="mod" value="0">
                        <a href="{$option.src}" class="list-group-item" title="{$option.text}" target="_blank"> {$option.text} </a>
                    </eq>
                </volist>
            </ul>
        </div>
        <div class="col-lg-3">
            <ul class="list-group">
                <volist name="webLink" id="option" key="sort" mod="4">
                    <eq name="mod" value="1">
                        <a href="{$option.src}" class="list-group-item" title="{$option.text}" target="_blank"> {$option.text} </a>
                    </eq>
                </volist>
            </ul>
        </div>
        <div class="col-lg-3">
            <ul class="list-group">
                <volist name="webLink" id="option" key="sort" mod="4">
                    <eq name="mod" value="2">
                        <a href="{$option.src}" class="list-group-item" title="{$option.text}" target="_blank"> {$option.text} </a>
                    </eq>
                </volist>
            </ul>
        </div>
        <div class="col-lg-3">
            <ul class="list-group">
                <volist name="webLink" id="option" key="sort" mod="4">
                    <eq name="mod" value="3">
                        <a href="{$option.src}" class="list-group-item" title="{$option.text}" target="_blank"> {$option.text} </a>
                    </eq>
                </volist>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function() {
    console.log('Welcome to Link');
})
</script>