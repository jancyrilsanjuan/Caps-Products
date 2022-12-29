<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\UserModel;
use App\Models\DestinationModel;
use App\Models\TagPlaceModel;
use App\Models\ReviewModel;


class AdminController extends Controller
{
  public function admin_account()
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
		return view('admin_account', $data);
	}

  public function admin()
  {
    return view('admin');
  }

//List of Destination in Admin
  public function destination_list()
  {
    $destination = new DestinationModel();
    if($this->request->getGet('q'))
    {
      $q=$this->request->getGet('q');
      $data['destinations']=$destination->like('name', $q)->findAll();
    }else{
      $data['destinations']=$destination->where('category', 'Destination')->findAll();
    }
    return view('destination_list', $data);
  }

//List of Hotel in Admin
  public function hotel_list()
  {
    $destination = new DestinationModel();
    if($this->request->getGet('q'))
    {
      $q=$this->request->getGet('q');
      $data['destinations']=$destination->like('name', $q)->findAll();
    }else{
      $data['destinations']=$destination->where('category', 'Hotel')->findAll();
    }
    return view('hotel_list', $data);
  }

//List of Pasalubong Center in Admin
  public function pasalubong_list()
  {
    $destination = new DestinationModel();
    if($this->request->getGet('q'))
    {
      $q=$this->request->getGet('q');
      $data['destinations']=$destination->like('name', $q)->findAll();
    }else{
      $data['destinations']=$destination->where('category', 'Pasalubongcenter')->findAll();
    }
    return view('pasalubong_list', $data);
  }

//List of Restaurant in Admin
  public function restaurant_list()
  {
    $destination = new DestinationModel();
    if($this->request->getGet('q'))
    {
      $q=$this->request->getGet('q');
      $data['destinations']=$destination->like('name', $q)->findAll();
    }else{
      $data['destinations']=$destination->where('category', 'Restaurant')->findAll();
    }
    return view('restaurant_list', $data);
  }

//Rates in Admin
  public function rates()
  {
    return view('rates');
  }

//List of user in Admin
  public function users_list()
  {
    $user = new UserModel();
    if($this->request->getGet('q'))
    {
      $q=$this->request->getGet('q');
      $data['users']=$user->like('name', $q)->findAll();
    }else{
      $data['users']=$user->findAll();
    }
    return view('users_list', $data);
  }

  public function review_rating()
  {
    $review = new ReviewModel();
    $data ['review_table'] = $review->orderBy('review_id', 'ASC')->findAll();
    return view('review_rating', $data);
  }

  public function adding_place()
  {
    return view('adding_place');
  }
}
