{include file="common/header" /}
<div class="form-box signin">
    <form class="el-form" method="post" action="{:url('admin/register/create')}">
        <div class="el-form-item">
            <label class="el-form-item__label " style="width: 100%; text-align: center;">欢迎光临</label>
        </div>
        <div class="el-form-item">
            <label class="el-form-item__label" style="width: 70px;">用户名</label>
            <div class="el-form-item__content" style="margin-left: 70px;">
                <div class="el-input" prop="name">
                    <input autocomplete="off" name="username" type="text" rows="2" validateevent="true" class="el-input__inner">
                </div>
            </div>
        </div>
        <div class="el-form-item">
            <label class="el-form-item__label" style="width: 70px;">密码</label>
            <div class="el-form-item__content" style="margin-left: 70px;"><i prop="password" class="el-input__icon fa fa-fw fa-eye"></i>
                <div class="el-input">
                    <input autocomplete="off" name="password" type="password" rows="2" validateevent="true" class="el-input__inner">
                </div>
            </div>
        </div>
        <div class="el-form-item">
            <label class="el-form-item__label" style="width: 70px;">昵称</label>
            <div class="el-form-item__content" style="margin-left: 70px;"><i prop="password" class="el-input__icon fa fa-fw fa-eye"></i>
                <div class="el-input">
                    <input autocomplete="off" name="nickname" type="password" rows="2" validateevent="true" class="el-input__inner">
                </div>
            </div>
        </div>
        <div class="el-form-item">
            <div class="el-form-item__content" style="margin-left: 70px;">
                <INPUT type="submit" class="el-button el-button-default right el-button--default" value=" 提交 ">
                <!-- <button type="button" class="el-button el-button-default right el-button--default">
                    <span>登录</span></button>
                <button type="button" class="el-button el-button-default el-button--default">
                    <span>重置</span></button> -->
            </div>
        </div>
    </form>
</div>
{include file="common/footer" /}