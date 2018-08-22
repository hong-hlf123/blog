<?php

namespace app\back\controller;

use think\Request;
use app\back\controller\Base;
use app\common\model\CategoryModel;

class Category extends Base
{
	public function initialize()
	{
		$this->checkSession();
		$this->assign('nav','category');	
	}
	public function index(Request $request)
	{
		$currentUser = $this->getCurrentUser();
		// 查询所有分类
		$categories = CategoryModel::where('user_id', $currentUser->id)
						->order('id', 'desc')
						->select();
		$this->assign('categories', $categories);
		$this->assign('page', $page);
		return $this->fetch('category/list');
	}
	public function add(Request $request)
	{
		if ($request->isPost()) {
			$title = $request->post('title', '', 'trim');
			if (!$title) {
				return $this->error('添加失败,标题不能为空');
			}
			$currentUser = $this->getCurrentUser();
			$category = new CategoryModel;
			$category->name = $title;
			$category->created_time = time();
			$category->user_id = $currentUser->id;
			$category->save();
			return $this->success('添加成功', 'admin_category_list');
		}
		return $this->fetch('category/add');
	}
	public function edit(Request $request, $id)
	{
		$category = CategoryModel::get($id);
		if (!$category) {
			return $this->error('编辑失败,分类不存在');
		}
		if ($request->isPost()) {
			$title = $request->post('title', '', 'trim');
			if (!$title) {
				return $this->error('编辑失败,标题不能为空');
			}
			$category->name = $title;
			$category->save();
			return $this->success('编辑成功', 'admin_category_list');
		}
		$this->assign('category', $category);
		return $this->fetch('category/edit');
	}
	public function delete(Request $request, $id)
	{
		$category = CategoryModel::get($id);
		if (!$category) {
			return $this->error('删除失败,分类不存在');
		}
		$category->delete();
		return $this->success('删除成功', 'admin_category_list');
	}
}
