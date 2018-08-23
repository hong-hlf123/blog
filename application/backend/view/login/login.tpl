{extend name="common/base" /}
{block name="title"}登录{/block}

{block name="full_content"}
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-md-offset-4">
        <div class="login-panel panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">登录</h3>
          </div>
          <div class="panel-body">
            <form role="form" class="login-form" action="{:url('login')}" method="post">
              <fieldset>
                <div class="form-group">
                  <input class="form-control" placeholder="用户名" name="username">
                </div>
                <div class="form-group">
                  <input class="form-control" placeholder="密码" name="password" type="password" value="">
                </div>
                <!-- Change this to a button or input when using this as a form -->
                <div class="form-group">
                  <button type="button" class="btn btn-lg btn-success btn-block btn-submit">登录</button>
                </div>
                <a class="text-warning" href="{:url('reg')}">没有账号-注册</a>
              </fieldset>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
{/block}

{block name="customscript"}
  <script src="__STATIC__/js/backend/login.js"></script>
{/block}
