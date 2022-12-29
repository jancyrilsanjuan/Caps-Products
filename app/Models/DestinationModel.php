<?php
namespace App\Models;
use CodeIgniter\Model;

class DestinationModel extends Model
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

  public function getIdPlace($id){
    return $this->select("place, image, name")->where("id", $id)->get()->getResult();
  }

  public function getNearbyHotels($place){
    return $this->where("place", $place)->where("category", "Hotel")->get()->getResult();
  }

  public function getNearbyRestaurant($place){
    return $this->where("place", $place)->where("category", "Restaurant")->get()->getResult();
  }

  public function getPlace(){
    return $this->where("category", "Destination")->get()->getResult();
  }

}
 ?>
