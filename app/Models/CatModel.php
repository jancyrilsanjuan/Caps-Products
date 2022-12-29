<?php
namespace App\Models;
use CodeIgniter\Model;

class CatModel extends Model
{
  protected $table = 'destinations';
  protected $primaryKey = 'id';
  protected $allowedFields =[
    'name',
    'place',
    'location',
    'category',
    'image',
    'description',
    'latitude',
    'longitude'
  ];
}
