<?php
namespace app\back\controller;

use think\Request;
use app\back\controller\Base;
use app\common\model\UserModel;

class Login extends Base{

    public function login(Request $request){

    	if (session('user')) {
    		$this->redirect('homepage');
    	}
    	if ($request->isPost()){
    		$username = $request->post('username', '', 'trim');
    		$user = UserModel::where('username', $username)->find();

    		if (!$user) {
				$this->error('登录失败,用户不存在');
			}
			// 登录验证
			$encryPassword = encrypt($request->post('password'));
			if ($encryPassword != $user->password) {
				$this->error('登录失败,用户或密码错误');
			}

			$userInfo = [
				'id' =>$user->id,
				'username' =>$user->username,
				'nickname' =>$user->nickname,
				'avatar' =>$user->avatar,
			];
			session('user',$userInfo);
			$this->success('登录成功','homepage');
		}
        return $this->fetch('login/login');
	}
    public function logout(Request $request){
    	session('user',null);
    	$this->success('正在退出...','login');
    }
}