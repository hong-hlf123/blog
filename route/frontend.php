<?php

Route::get('/', 'frontend/Index/index')->name('homepage');


Route::get('/articles$', 'frontend/Article/index')->name('article_list');
