<?php
namespace App\Models;
use CodeIgniter\Model;

class ImageUpload extends Model
{
	protected $table                = 'images';
	protected $primaryKey           = 'id';
	protected $allowedFields        = [
		'destination_id',
    'image',
    'uploaded_by',
    'status',
    'created_at',
    'updated_at'
	];
}
