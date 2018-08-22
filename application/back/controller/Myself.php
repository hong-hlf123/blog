<?php
namespace app\back\controller;

use think\Request;
use app\back\controller\Base;

class Myself extends Base
{
	public function index(Request $request)
	{
		$this->checkSession();
		$this->assign('nav','myself');
		return $this->fetch('myself/myself');
	}
}