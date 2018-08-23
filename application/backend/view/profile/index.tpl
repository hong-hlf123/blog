{extend name="common/base" /}
{block name="title"}个人信息 - {__block__}{/block}

{block name="content"}

	<div class="row">
	  <div class="col-lg-12">
	    <h1 class="page-header">个人信息</h1>
	  </div>
	  <div class="col-lg-6">
	    <form action="{:url('admin_profile')}" method="post">
	      <div class="form-group">
	        <label for="id_nickname">昵称</label>
	        <input type="text" class="form-control" id="id_nickname" name="nickname" value="{$user->nickname}" placeholder="昵称">
	      </div>
	      <div class="form-group">
	        <label for="id_intro">个人简介</label>
	        <textarea class="form-control" id="id_intro" rows="5" name="intro" placeholder="个人简介">{$user->intro}</textarea>
	      </div>
	      <button type="submit" class="btn btn-primary">保存信息</button>
	    </form>
	  </div>
	  <div class="col-lg-6">
	    <form action="{:url('admin_avatar_change')}" method="post" enctype="multipart/form-data">
	      <div class="form-group">
      		{if $user->avatar}
      			<img src="__UPLOAD__/{$user->avatar}" alt="" style="width:200px;height:200px;" class="img-circle img-responsive img-avatar">
      		{else /}
	        	<img src="__STATIC__/images/header.jpg" alt="" class="img-circle img-responsive">
	        {/if}
	      </div>
	      <div class="form-group">
			    <input type="file" name="file" id="">
			    <p class="help-block">支持jpg,jpeg,png,gif类型的文件.文件大小不得超过2M</p>
			  </div>
	      <button type="submit" class="btn btn-primary">上传头像</button>
	    </form>
	  </div>
	</div>

{/block}

{block name="customscript"}
{/block}

