<div id="page-wrapper">
    <div class="row">
        <volist name="webBlog" id="option" key="sort">
            <div class="col-lg-3">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title ellipsis">
                            <a href="JavaScript:;" class=""> {$option.title} </a>
                        </h3>
                    </div>
                    <div class="panel-body thumbnail nmb nbr">
                        <a href="JavaScript:;" class="">
                            <img src="{$option.thumbnail} " alt="... ">
                        </a>
                    </div>
                    <div class="panel-footer">
                        <p class="ellipsis">{$option.desc}</p>
                        {$option.updatetime} - <span class="help-text">{$option.author}</span>
                    </div>
                </div>
            </div>
        </volist>
    </div>
</div>