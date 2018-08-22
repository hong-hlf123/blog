<?php


Route::rule('/login', 'back/Login/login')->name('login');
Route::rule('/logout', 'back/Login/logout')->name('logout');
Route::rule('/reg', 'back/Reg/reg')->name('reg');
Route::get('/user/exist', 'back/Reg/userExist')->name('user_exist');



// 分类管理
Route::get('/admin/category$', 'back/Category/index')->name('admin_category_list');
Route::rule('/admin/category/add$', 'back/Category/add')->name('admin_category_add');
Route::rule('/admin/category/:id/edit$', 'back/Category/edit')
		->pattern(['id'=>'\d+'])
		->name('admin_category_edit');
Route::get('/admin/category/:id/delete$', 'back/Category/delete')
		->pattern(['id'=>'\d+'])
		->name('admin_category_delete');


// 标签管理
Route::get('/admin/tag$', 'back/Tag/index')->name('admin_tag_list');
Route::rule('/admin/tag/add$', 'back/Tag/add')->name('admin_tag_add');
Route::rule('/admin/tag/:id/edit$', 'back/Tag/edit')
		->pattern(['id'=>'\d+'])
		->name('admin_tag_edit');
Route::get('/admin/tag/:id/delete$', 'back/Tag/delete')
		->pattern(['id'=>'\d+'])
		->name('admin_tag_delete');


// 文章管理
Route::get('/admin/article$', 'back/Article/index')->name('admin_article_list');
Route::rule('/admin/article/add$', 'back/Article/add')->name('admin_article_add');
Route::rule('/admin/article/:id/edit$', 'back/Article/edit')
		->pattern(['id'=>'\d+'])
		->name('admin_article_edit');
Route::get('/admin/article/:id/delete$', 'back/Article/delete')
		->pattern(['id'=>'\d+'])
		->name('admin_article_delete');


// 个人信息
Route::get('/admin/myself', 'back/Myself/index')->name('admin_myself_myself');