<div class="container-fluid" id="app">
    <include file="common/page-navbar" />
    <div class="row">
        <div class="col-xs-12 col-sm-2 col-md-1 col-lg-2" id="sidebar">
            <include file="common/page-sidebar" />
        </div>
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8" id="main">
            <include file="common/page-breadcrumb" />
            <!-- <include file="index/icons" /> -->
        </div>
        <div class="col-xs-12 col-sm-2 col-md-1 col-lg-2" id="sys">
            <include file="common/page-menu" />
        </div>
    </div>
</div>
<include file="common/page-js" />
<script type="text/javascript">
    $(function () {
        console.log('Welcome to Blog');
    })
</script>

