<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\UserModel;

class VerifyController extends Controller
{

public function verification($length)
{
$str_result = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
 return substr(str_shuffle($str_result),
 0, $length);
}
}
