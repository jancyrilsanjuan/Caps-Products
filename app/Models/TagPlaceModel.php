<?php
namespace App\Models;
use CodeIgniter\Model;

class TagPlaceModel extends Model
{
  protected $table = 'tag_place';
  protected $primaryKey = 'id';
  protected $allowedFields = [
    'description',
    'location_id',
    'picture_id',
    'user_id',
    'status'
  ];
}
