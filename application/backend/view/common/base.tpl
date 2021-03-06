<!DOCTYPE html>
<!-- saved from url=(0027)http://fapiao.itdiffer.com/ -->
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>
    {block name="title"}后台管理{/block}
  </title>
  <!-- Bootstrap Core CSS -->
  <link href="__STATIC__/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- MetisMenu CSS -->
  <link href="__STATIC__/libs/metisMenu/metisMenu.min.css" rel="stylesheet">
  <!-- Font Awesome CSS -->
  <link href="__STATIC__/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <link href="__STATIC__/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="__STATIC__/css/backend.css" rel="stylesheet">
  {block name="customstyle"}{/block}
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="">
  {block name="full_content"}
    <div id="wrapper">
      <!-- Navigation -->
      <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{:url('admin_category_list')}">博客后台管理</a>
        </div>
        <!-- /.navbar-header -->
        <ul class="nav navbar-top-links navbar-right">
          <li class=""><a class="dropdown-toggle" href="{:url('homepage')}"><i class="fa fa-home fa-fw"></i>首页</a></li>
          <!-- /.dropdown -->
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="fa fa-user fa-fw"></i>{$Think.session.user.username} <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
              <li><a href="./修改密码.html"><i class="fa fa-gear fa-fw"></i> 修改密码</a></li>
              <li class="divider"></li>
              <li><a href="{:url('logout')}"><i class="fa fa-sign-out fa-fw"></i> 退出登录</a></li>
            </ul>
            <!-- /.dropdown-user -->
          </li>
          <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->
        <div class="navbar-default sidebar" role="navigation">
          <div class="sidebar-nav navbar-collapse">
            {include file="common/sidebar" /}
          </div>
          <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
      </nav>
      <div id="page-wrapper">
        {block name="content"}{/block}
      </div>
    </div>
  {/block}
  <div id="modal" class="modal fade" tabindex="-1" role="dialog"></div>
  <script></script>
  <!-- jQuery -->
  <script src="__STATIC__/js/jquery.min.js"></script>
  <!-- Bootstrap Core JavaScript -->
  <script src="__STATIC__/libs/bootstrap/js/bootstrap.min.js"></script>
  <!-- Metis Menu Plugin JavaScript -->
  <script src="__STATIC__/libs/metisMenu/metisMenu.min.js"></script>
  <!-- Custom Theme JavaScript -->
  <script src="__STATIC__/js/sb-admin-2.js"></script>
  <script src="__STATIC__/js/backend/common.js"></script>
  {block name="customscript"}{/block}
</body>
</html>
