<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\UserModel;

class SignupController extends Controller
{
//User verification
  public function verification($length)
  {
    $str_result = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    return substr(str_shuffle($str_result),
    0, $length);
  }

//User Verify
  public function verify($id = null)
  {
    $user = new UserModel();
    $info = $user->where('token', $id)->first();
    if($info)
    {
      echo 'meron';
      $data = [
        'status' => 'active',
        'token' => $this->verification(50)
      ];
      $user->set($data)->where('token', $id)->update();
      $session = session();
      $session->setFlashdata('msg', 'Account activated!');
      return redirect()->to('/signin');
    }else{
      echo 'expired link';
    }
  }

//Sign up
  public function signup()
  {
    helper(['form']);
    $data = [];
    echo view('signup', $data);
  }

  public function store()
  {
    $token = $this->verification(50);
    helper(['form']);
    $rules = [
      'name'          => 'required|min_length[2]|max_length[50]',
      'email'         => 'required|min_length[4]|max_length[100]|valid_email|is_unique[users.email]',
      'password'      => 'required|min_length[4]|max_length[50]',
      'confirmpassword'  => 'matches[password]'

    ];
    if($this->validate($rules))
    {
      $userModel = new UserModel();
      $data = [
        'name'     => $this->request->getVar('name'),
        'email'    => $this->request->getVar('email'),
        'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),
        // 'usertype'    => $this->request->getVar('usertype'),
        'status' => 'active',
        'token' => $token,
        'usertype' => 'user',
      ];
      $userModel->save($data);
      $session = session();
      $session->setFlashdata('msg', 'Please check your email address to confirm your Registration');
      $to = $this->request->getVar('email');
      $name = $this->request->getVar('name');
      $subject = 'Please confirm your registration';
      $message = 'Hi  ' .$name .'!<br><center><h1>Welcome to eTour Guide: OrMin Travel Guide!</h1></center>
      <center><h4>Fantastic Vacation Spots Pristine Island, Magnificient Beaches, and Untouched Environment May All Be Found on Oriental Mindoro</h4></center>
      Please CONFIRM your registration by clicking this <a href="' . base_url('/verify') . '/' . $token.' ">link</a>';
      $this->sendMail($to, $subject, $message);
      return redirect()->to('/signin');
    }else{
      $data['validation'] = $this->validator;
      echo view('signup', $data);
    }
  }

  public function email()
  {
    return view('form_view');
  }

//Sending Email to Confirm Registration
  function sendMail($to,$subject,$message)
  {
    $to = $to;
    $subject = $subject;
    $message = $message;
    $email = \Config\Services::email();
    $email->setTo($to);
    $email->setFrom('jancyrilsanjuan@gmail.com', 'Confirm Registration');
    $email->setSubject($subject);
    $email->setMessage($message);
    if ($email->send())
    {
      echo 'Email successfully sent';
    }else{
      $data = $email->printDebugger(['headers']);
      print_r($data);
    }
  }
}
