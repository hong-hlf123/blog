<!DOCTYPE html>
<!-- saved from url=(0032)http://fapiao.itdiffer.com/login -->
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <title> {block name="title"}我的博客{/block} </title>
  <!-- Bootstrap Core CSS -->
  <link href="__STATIC__/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome CSS -->
  <link href="__STATIC__/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <link href="__STATIC__/css/blog.css" rel="stylesheet">
  {block name="customstyle"}{/block}
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
  <!-- navbar -->
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="{:url('homepage')}">我的博客</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="{:url('homepage')}">首页</a></li>
          <li><a href="./列表页.html">文章列表</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          {if $Think.session.user }
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{$Think.session.user.username} <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="{:url('admin_category_list')}"><i class="fa fa-dashboard fa-fw"></i> 管理后台</a></li>
                <li><a href="{:url('logout')}"><i class="fa fa-sign-out fa-fw"></i> 安全退出</a></li>
              </ul>
            </li>
          {else /}
            <li><a href="{:url('login')}">登录</a></li>
            <li><a href="{:url('reg')}">注册</a></li>
          {/if}
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </nav>
  <!-- navbar -->
  <div class="container">
    {block name="content"}{/block}
  </div>
  <script></script>
  <!-- jQuery -->
  <script src="__STATIC__/js/jquery.min.js"></script>
  <!-- Bootstrap Core JavaScript -->
  <script src="__STATIC__/libs/bootstrap/js/bootstrap.min.js"></script>

  {block name="customscript"}{/block}
</body>
</html>