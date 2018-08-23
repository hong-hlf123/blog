<?php

namespace app\frontend\controller;

use think\Controller;
use app\common\model\ArticleModel;
use app\common\model\UserModel;
use app\common\model\CategoryModel;
use app\common\model\TagModel;

class Article extends Controller
{
    public function index(Request $request)
    {
        $where = [];

        $categoryID = $request->get('category',0);
        $category = CategoryModel::get($categoryID);
        if ($category) {
            $where['category_id'] = $category->id;
        }

    	$articles = ArticleModel::where($where)->order('id', 'desc')->paginate(10);
    	$page = $articles->render();

    	$categorys = CategoryModel::where('article_num','>',0)->order('id', 'desc')->select();

		$this->assign('articles', $articles);
        $this->assign('page', $page);
		$this->assign('currcategory', $category);
		$this->assign('categorys', $categorys);
		
        return $this->fetch('article/list');
    }
}