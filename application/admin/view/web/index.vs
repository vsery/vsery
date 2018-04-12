<div id="page-wrapper">
    <form class="form-inline">
        <div class="form-group">
            <label for="exampleInputID">ID</label>
            <input type="text" class="form-control" id="exampleInputID" placeholder="">
        </div>
        <div class="form-group">
            <label for="exampleInputText">文本</label>
            <input type="email" class="form-control" id="exampleInputText" placeholder="请输入...">
        </div>
        <div class="form-group">
            <label for="exampleInputPath">跳转地址</label>
            <input type="email" class="form-control" id="exampleInputPath" placeholder="请输入...">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
    </form>
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th class="text-left">#</th>
                <th class="text-center">排序</th>
                <th class="text-center">文本</th>
                <th class="text-left">图标</th>
                <th class="text-left">跳转地址</th>
                <th class="text-left">方法</th>
                <th class="text-left">样式</th>
                <th class="text-center"><span data-toggle="tooltip" data-placement="top" title="启用1 | 禁用0">状态</span>
                </th>
                <th class="text-left">创建时间</th>
                <th class="text-center">备注</th>
                <th class="text-right">操作</th>
            </tr>
        </thead>
        <tbody>
            <volist name="webMenu" id="menu" key="sort" mod="4">
                <if condition="$menu['status'] eq '1'">
                    <tr class="info">
                    <else />
                    <tr>
                </if>
                <td scope="row text-center"> {$menu.id} </td>
                <td class="text-center"> {$menu.sort} </td>
                <td class="text-center"> {$menu.text} </td>
                <td class="text-left"> <i class="fa fa-fw {$menu.icon}"></i> {$menu.icon} </td>
                <td class="text-left"> {$menu.path} </td>
                <td class="text-left"> {$menu.style} </td>
                <td class="text-left"> {$menu.fun} </td>
                <td class="text-center">
                    <if condition="$menu['status'] eq '1'">
                        <span class="text-success"> 启用 </span>
                        <else />
                        <span class="text-danger"> 禁用 </span>
                    </if>
                </td>
                <td class="text-left"> {$menu.createtime} </td>
                <td class="text-center">
                    <if condition="$menu['remark'] eq ''"> 暂无
                        <else /> {$menu.remark} </if>
                </td>
                <td class="text-right">
                    <if condition="$menu['status'] eq '1'">
                        <a href="javascript:;" class="text-info">修改</button>
                        <a href="javascript:;" class="text-danger">禁用</button>
                        <else />
                        <a href="javascript:;" class="text-success">启用</button>
                    </if>
                </td>
                </tr>
            </volist>
        </tbody>
    </table>
    <nav aria-label="Page navigation">
        <ul class="pagination pull-right">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
</div>
<script type="text/javascript">
$(function() {
    console.log('Welcome to Link');
    $('[data-toggle="tooltip"]').tooltip()
})
</script>
<!-- <td class="active"> {$menu} </td>
<td class="success">...</td>
<td class="warning">...</td>
<td class="danger">...</td>
<td class="info">...</td> -->