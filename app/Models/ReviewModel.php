<?php
namespace App\Models;
use CodeIgniter\Model;

class ReviewModel extends Model{
    protected $table = 'review_table';
    protected $primaryKey = 'review_id';
    protected $allowedFields = [
      'user_id',
      'destination_id',
      'user_name',
      'user_rating',
      'user_review',

    ];
}
