{extend name="common/base" /}
{block name="title"}首页 - {__block__}{/block}

{block name="content"}

  <div class="row">
    <div class="col-md-9">
      {foreach $articles as $article }
        {include file="common/widget/article-item-home"}
      {/foreach}
    </div>
    <div class="col-md-3">
      <div class="visible-md visible-lg">
        <div class="panel panel-custom">
          <div class="panel-heading">热门标签</div>
          <div class="content tag-cloud">
            {foreach $tags as $tag }
              <a href="./标签列表.html">{$tag->name}</a>
            {/foreach}
          </div>
        </div>
      </div>
      <div class="visible-md visible-lg">
        <div class="panel panel-custom">
          <div class="panel-heading">博客分类</div>
          <div class="list-group list-group-flush">
            {foreach $categorys as $category }
              <a href="./列表页.html" class="list-group-item">{$category->name}<span class="badge">{$category->article_num}</span></a>
            {/foreach}
          </div>
        </div>
      </div>
    </div>
  </div>

{/block}