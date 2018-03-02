<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Dashboard</h1>
        </div>
    </div>
    <include file="common/breadcrumb" />

    <div class="row">
        <div class="col-lg-3">
            <ul class="list-group">
                <volist name="webBlog" id="option" key="sort">
                    <div class="list-group">
                        <h3>{$option.title}</h3>
                        <details>
                            <summary>关键字</summary>
                            <p>{$option.key}</p>
                        </details>
                        <content>{$option.text}</content>
                        <footer>
                            {$option.author}
                        </footer>
                    </div>
                </volist>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        console.log('Welcome to Blog');
    })
</script>

