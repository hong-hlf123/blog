{extend name="common/base" /}
{block name="title"}编辑标签 - {__block__}{/block}

{block name="content"}

  <div class="row">
    <div class="col-lg-12">
      <h1 class="page-header">编辑标签</h1>
    </div>
    <div class="col-lg-12">
      <form action="{:url('admin_tag_edit', 'id='.$tag->id)}" method="post">
        <div class="form-group">
          <label for="id_title">标签名称</label>
          <input type="text" class="form-control" id="id_title" name="title" value="{$tag->name}" placeholder="标签名称">
        </div>
        <button type="submit" class="btn btn-primary">提交</button>
      </form>
    </div>
  </div>

{/block}

