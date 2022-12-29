<?php
namespace App\Models;
use CodeIgniter\Model;
class SearchModel extends Model
{
  protected $table = 'destinations';
  protected $primaryKey = 'id';
  protected $allowedFields = 'name';
}
