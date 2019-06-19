<?php
namespace app\member\controller;

use app\common\controller\IndexCommon;
use app\common\model\SiteConfig;
use app\common\model\SiteCaptcha;
use think\facade\Request;
use think\facade\Session;
use think\facade\Hook;
use app\common\model\AuthUser;
use app\common\validate\UserValidate;

class Passport extends IndexCommon
{

    // 登录
    public function login()
    {
        // 已登录直接跳转到会员中心
        if (is_login()) {
            $this->redirect('member/index/index');
        }

        if (Request::isPost()) {
            $request = Request::param();

            // 验证数据
            $validate = new UserValidate();
            $validateResult = $validate->scene('login')->check($request);
            if (!$validateResult) {
                return $this->response(201, $validate->getError());
            }
            
            // 登录验证码
            $is_captcha = SiteConfig::getCofig($this->site_id, 'captcha_member_login');
            if ($is_captcha == true) {
                if (empty($request['captcha'])) {
                    return $this->response(201, '验证码不能空');
                }

                $captchaObj = new SiteCaptcha;
                $checkCaptcha = $captchaObj->check($request['captcha']);
                if ($checkCaptcha == false) {
                    return $this->response(201, '验证码错误');
                }
            }

            // 并查询用户信息
            $obj = new AuthUser;
            $userInfo = $obj->where('username', $request['username'])->find();
            $userRole = $obj->getUserRole($userInfo['uid']);

            // 用户不存在
            if (!$userInfo) {
                return $this->response(201, '用户不存在');
            }

            // 用户被冻结
            if ($userInfo->status == 1) {
                return $this->response(201, '用户被冻结');
            }

            // 验证密码 
            if (!password_verify($request['password'], $userInfo->password)) {
                return $this->response(201, '密码不正确');
            }

            // 生成session
            $user_auth =[
                'uid'      => $userInfo->uid,
                'username' => $userInfo->username,
                'role'     => $userRole,
            ];

            Session::set('user_auth', $user_auth, 'index');

            // 监听会员登录
            $logData = [
                'uid'     => $userInfo->uid,
                'site_id' => $this->site_id,
                'ip'      => get_client_ip(),
            ];
            Hook::listen('user_login', $logData);

            return $this->response(200, '登录成功');
        }

        $is_captcha = SiteConfig::getCofig($this->site_id, 'captcha_member_login');
        return $this->fetch('passport/login', ['captcha' => $is_captcha]);
    }

    // 注册
    public function register()
    {
        // 处理AJAX提交数据
        if (Request::isPost()) {
            $request = Request::param();

            // 验证数据
            $validate = new UserValidate();
            $validateResult = $validate->scene('register')->check($request);
            if (!$validateResult) {
                return $this->response(201, $validate->getError());
            }

            // 登录验证码
            $is_captcha = SiteConfig::getCofig($this->site_id, 'captcha_member_register');
            if ($is_captcha == true) {
                if (empty($request['captcha'])) {
                    return $this->response(201, '验证码不能空');
                }

                $captchaObj = new SiteCaptcha;
                $checkCaptcha = $captchaObj->check($request['captcha']);
                if ($checkCaptcha == false) {
                    return $this->response(201, '验证码错误');
                }
            }

            // 校验记录
            $memberObj = new AuthUser;
            $exist = $memberObj->where('username', $request['username'])->value('uid');
            if (is_numeric($exist)) {
                return $this->response(201, '账户名称已经存在');
            }

            // 默认会员组
            $group_id = SiteConfig::getCofig($this->site_id, 'member_default_group');

            // 写入会员信息
            $memberData = [
                'site_id'  => $this->site_id,
                'group_id' => isset($group_id) ? $group_id : 0,
                'password' =>  password_hash($request['password'], PASSWORD_DEFAULT),
            ];
            $memberData = array_merge($request, $memberData);
            $memberObj->allowField(true)->save($memberData);

            if (is_numeric($memberObj->uid)) {
                // 监听会员注册
                $params = [
                    'uid'           => $memberObj->uid,
                    'username'      => $memberObj->username,
                    'register_time' => time(),
                    'site_id'       => $this->site_id,
                    'register_ip'   => get_client_ip(),
                ];
                Hook::listen('user_register', $params);

                return $this->response(200, '注册成功');
            } else {
                return $this->response(201, '注册失败');
            }
        }

        $is_captcha = SiteConfig::getCofig($this->site_id, 'captcha_member_register');

        return $this->fetch('passport/register', ['captcha' => $is_captcha]);
    }

    // 注销登录
    public function logout()
    {
        Session::delete('user_auth','index');
        return $this->redirect('member/passport/login');
    }

    // 忘记密码找回
    public function forget()
    {
        echo 11;
    }
}
