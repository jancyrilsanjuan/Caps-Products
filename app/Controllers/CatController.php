<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\CatModel;

class CatController extends Controller
{
  public function category()
  {
    $session = session();
    $data =[
      'logged' => $session->get('id')
    ];
    return view('category');
  }
}
