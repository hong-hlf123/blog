{extend name="common/base" /}
{block name="title"}编辑分类 - {__block__}{/block}

{block name="content"}

	<div class="row">
	  <div class="col-lg-12">
	    <h1 class="page-header">编辑分类</h1>
	  </div>
	  <div class="col-lg-12">
	    <form action="{:url('admin_category_edit', 'id='.$category->id)}" method="post">
	      <div class="form-group">
	        <label for="id_title">分类标题</label>
	        <input type="text" class="form-control" id="id_title" name="title" value="{$category->name}" placeholder="分类标题">
	      </div>
	      <button type="submit" class="btn btn-primary">提交</button>
	    </form>
	  </div>
	</div>

{/block}
