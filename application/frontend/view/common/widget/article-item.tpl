<div class="list-group-item">
  <h4 class="list-group-item-heading">
    <a href="./内容页.html">{$article->title}</a>
  </h4>
  <p>
    <span class="label label-info"><b>{$article->created_time|date='Y年m月d日 H时i分'}</b></span> &nbsp;&nbsp;&nbsp;阅读 <span class="badge">{$article->views}</span>
  </p>
  <p class="subtitle">
    {$article->sub_title}
  </p>
</div>
<hr>
