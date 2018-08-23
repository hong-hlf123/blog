{extend name="common/base" /}
{block name="title"}编辑文章 - {__block__}{/block}

{block name="content"}

  <div class="row">
    <div class="col-lg-12">
      <h1 class="page-header">编辑文章</h1>
    </div>
    <div class="col-lg-12">
      <form action="{:url('admin_article_edit', 'id='.$article->id)}" method="post">
        <div class="form-group">
          <label for="id_title">文章标题</label>
          <input type="text" class="form-control" id="id_title" name="title" value="{$article->title}" placeholder="文章标题">
        </div>
        <div class="form-group">
          <label for="id_subtitle">副标题</label>
          <input type="text" class="form-control" id="id_subtitle" name="subtitle" value="{$article->sub_title}" placeholder="副标题">
        </div>
        <div class="form-group">
          <label for="id_category">分类</label>
          <select class="form-control" id="id_category" name="category">
						{foreach $categories as $key=>$category } 
            	<option 
              {if $category->id==$article->category_id}
               selected="selected"
              {/if} 
              value="{$category->id}">{$category->name}</option>
						{/foreach}
          </select>
        </div>
        <div class="form-group">
          <label>标签</label>
          <div>
						{foreach $tags as $key=>$tag } 
	            <label class="checkbox-inline">
	              <input 
                {in name="$tag->id" value="$article->tagIds"}
                  checked="checked" 
                {/in}
                type="checkbox" id="" name="tag[]" value="{$tag->id}"> {$tag->name}
	            </label>
						{/foreach}
          </div>
        </div>
        <div class="form-group">
          <label for="id_content">文章内容</label>
          <textarea class="form-control" id="id_content" rows="8" name="content">{$article->body}</textarea>
        </div>
        <button type="submit" class="btn btn-primary">提交</button>
      </form>
    </div>
  </div>

{/block}

{block name="customscript"}
  <script src="__STATIC__/js/backend/article_manage.js"></script>
{/block}
