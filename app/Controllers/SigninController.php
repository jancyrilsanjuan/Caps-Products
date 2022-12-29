<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\UserModel;
class SigninController extends Controller
{
  public function logout()
  {
    $session = session();
    $session->destroy();
    return redirect()->to('/signin');
  }

  public function index()
  {
    helper(['form']);
    echo view('signin');
  }

  public function loginAuth()
  {
    $session = session();
    $userModel = new UserModel();
    $email = $this->request->getVar('email');
    $password = $this->request->getVar('password');
    $data = $userModel->where('email', $email)->first();
    if($data)
    {
      $pass = $data['password'];
      $authenticatePassword = password_verify($password, $pass);
      if($authenticatePassword)
      {
        $ses_data = [
          'id' => $data['id'],
          'name' => $data['name'],
          'email' => $data['email'],
          'usertype' => $data['usertype'],
          'isLoggedIn' => TRUE
        ];
        $session->set($ses_data);
        if($session->usertype == 'user')
        {
          return redirect()->to('/profile');
        }else{
          return redirect()->to('/admin');
        }
      }else{
        $session->setFlashdata('msg', 'Password is incorrect.');
        return redirect()->to('/signin');
      }
    }else{
      $session->setFlashdata('msg', 'Email does not exist.');
      return redirect()->to('/signin');
    }
  }

  public function user_account()
  {
		helper(['form']);
		$model = new UserModel();
    $session = session();
    	$data = ['logged' => $session->get('id')];

		if ($this->request->getMethod() == 'post') {
			//let's do the validation here
			$rules = [
				'name' => 'required|min_length[3]|max_length[20]',
				];

			if($this->request->getPost('password') != ''){
				$rules['password'] = 'required|min_length[8]|max_length[255]';
				$rules['confirmpassword'] = 'matches[password]';
			}
			if (! $this->validate($rules)) {
				$data['validation'] = $this->validator;
			}else{
				$newData = [
					'logged' => session()->get('id'),
					'name' => $this->request->getPost('name'),
					];
					if($this->request->getPost('password') != ''){
						$newData['password'] = $this->request->getPost('password');
					}
				$model->save($newData);
				session()->setFlashdata('success', 'Successfuly Updated');
				return redirect()->to('/user_account');

			}
		}

		$data['users'] = $model->where('id', session()->get('id'))->first();
		return view('user_account', $data);
	}

  public function verification($length)
  {
    $str_result = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    return substr(str_shuffle($str_result),
    0, $length);
  }

  public function passwordreset($token = null)
  {
    $user = new UserModel();
    $u = $user->where('token', $token)->findAll();
    $data = [
      'token' => $token,
    ];
    if($u)
    {
      return view('changepass', $data);
    }else{
      echo 'invalid token';
    }
  }

  public function changep()
  {
    helper(['form']);
    $rules = [
      'password'      => 'required|min_length[4]|max_length[50]',
      'confirmpassword'  => 'matches[password]'
    ];
    if($this->validate($rules))
    {
      $User = new UserModel();
      $token = $this->request->getVar('token');
      $data = [
        'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),
        'token'=>$this->verification(50),
      ];
      $User->set($data)->where(['token'=>$token])->update();
      echo '<pre>';
      // print_r($token);
      echo '</pre>';
      return redirect()->to('/signin');
    }
  }

  public function reset()
  {
    $email = $this->request->getVar('email');
    $user = new UserModel();
    $val = $user->where('email', $email)->findAll();
    if($val)
    {
      foreach($val as $v)
      {
        $token = $v['token'];
        $name= $v['name'];
      }
      $to = $email;
      $subject = 'Password reset';
      $message = 'Hi  ' .$name .'!<br><center><h1>Welcome to eGuide: OrMin Travel Guide!</h1></center>
      <center><h4>you have requested for password reset.</h4></center>
      Please click this  <a href="' . base_url('/passwordreset') . '/' . $token.' ">link</a> to change your password' ;
      $this->sendMail($to, $subject, $message);
      return redirect()->to('/changepass');
    }else{
      return redirect()->to('/signin');
    }
    // echo '<pre>';
    // print_r($val);
    // echo '</pre>';
  }

  public function update($password = null)
  {
    $destination = new $DestinationModel();
    $destination->where('id', $id)->first();
  }

  public function changepass()
  {
    return view('changepass');
  }

  public function forgetpass()
  {
    return view('forgetpass');
  }

  public function email()
  {
    return view('form_view');
  }

  function sendMail($to,$subject,$message)
  {
    $to = $to;
    $subject = $subject;
    $message = $message;
    $email = \Config\Services::email();
    $email->setTo($to);
    $email->setFrom('jancyrilsanjuan@gmail.com', 'Password Reset');
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
