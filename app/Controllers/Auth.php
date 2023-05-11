<?php

namespace App\Controllers;

use App\Controller\BaseController;
use App\Controllers\BaseController as ControllersBaseController;
use App\models\StaffModel;

class Auth extends ControllersBaseController
{
    protected $staffmodel;

    public function __construct()
    {
        $this->staffmodel = new StaffModel();
    }

    public function login()
    {
        $post = $this->request->getpost();
        $datapost = $this->staffmodel->where(['email' => $post['email']])->first();
        if ($datapost) {
            if (md5($post['password']) == $datapost['password']) {
                $key = array(
                    'id' => $datapost['id'],
                    'name' => $datapost['name'],
                    'email' => $datapost['email'],
                );
                session()->set($key);
                return redirect()->to(base_url('home'))->withInput();
            } else {
                return redirect()->to(base_url(''))->with('error', 'password tidak sesuai');
            }
        } else {
            return redirect()->to(base_url(''))->with('error', 'email tidak sesuai');
        }
    }

    public function logout()
    {
        session()->remove('id', 'name', 'email');
        return redirect()->to(base_url())->with('error', 'Anda Sudah Logout');
    }
}
