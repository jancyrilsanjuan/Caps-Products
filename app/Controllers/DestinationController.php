<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\DestinationModel;
use App\Models\ImageUpload;
use App\Models\ReviewModel;

class DestinationController extends Controller
{
//Destinations in Calapan City
  public function morcal()
  {
    $destination = new DestinationModel();
    $session = session();
    $data =[
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'calapan')->findAll(),
      'places' => $destination->where('place', 'Calapan')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Baco
  public function morbaco()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'baco')->findAll(),
      'places' => $destination->where('place', 'Baco')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in San Teodoro
  public function morsan()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'san teodoro')->findAll(),
      'places' => $destination->where('place', 'San Teodoro')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Puerto Galera
  public function morpue()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'puerto galera')->findAll(),
      'places' => $destination->where('place', 'Puerto Galera')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Naujan
  public function mornau()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'naujan')->findAll(),
      'places' => $destination->where('place', 'Naujan')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Victoria
  public function morvic()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'victoria')->findAll(),
      'places' => $destination->where('place', 'Victoria')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Socorro
  public function morsoc()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'socorro')->findAll(),
      'places' => $destination->where('place', 'Socorro')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Pola
  public function morpola()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'pola')->findAll(),
      'places' => $destination->where('place', 'Pola')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Pinamalayan
  public function morpin()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'pinamalayan')->findAll(),
      'places' => $destination->where('place', 'Pinamalayan')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Gloria
  public function morglo()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'gloria')->findAll(),
      'places' => $destination->where('place', 'Gloria')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Bansud
  public function morban()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'bansud')->findAll(),
      'places' => $destination->where('place', 'Bansud')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Bongabong
  public function morbong()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'bongabong')->findAll(),
      'places' => $destination->where('place', 'Bongabong')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Roxas
  public function morrox()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'roxas')->findAll(),
      'places' => $destination->where('place', 'Roxas')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Mansalay
  public function morman()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'mansalay')->findAll(),
      'places' => $destination->where('place', 'Mansalay')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Destinations in Bulalacao
  public function morbul()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'bulalacao')->findAll(),
      'places' => $destination->where('place', 'Bulalacao')->where('category', 'Destination')->findAll(),
    ];
    return view('destination_page', $data);
  }

//Update data in table
  public function update($id = null)
  {
    $destination = new $DestinationModel();
    $destination->where('id', $id)->first();
  }

  public function insert_destination()
  {
    return view('desti');
  }

//Inserting Data
  public function actionInsert()
  {
    $name=$this->request->getVar('name');
    $place=$this->request->getVar('place');
    $location=$this->request->getVar('location');
    $category=$this->request->getVar('category');
    $image=$this->request->getVar('image');
    $description=$this->request->getVar('description');
    $latitude=$this->request->getVar('latitude');
    $longitude=$this->request->getVar('longitude');
    $destination = new DestinationModel();
    if($place == 'Calapan City')
    {
      $place = 'Calapan';
    }else if(
      $category == 'Destination')
      {
        $category ='Destination';
      }
      $data = [
        'name' => $name,
        'place' => $place,
        'location' => $location,
        'category' => $category,
        'image' => $place. '/'. $image,
        'description' => $description,
        'latitude' => $latitude,
        'longitude' => $longitude
      ];
      $destination->save($data);
      return view('adding_place');
    }

//Destinations Details
  public function destination_details()
  {
    $destination = new DestinationModel();
    $session = session();
    $data =[
      'destinations' => $destination->findAll(),
      'logged' => $session->get('id'),
    ];
   return view('destination_details');
   }

   public function test1($id= null)
   {
     $session = session();
     $destination = model(DestinationModel::class);
     $place_id = $destination->getIdPlace($id);
     $name = new DestinationModel();
     $rv = new ReviewModel();
     $client = $name->where('id', $id)->first();
     $cname= $client['LastName'] . $client['FirstName'];
     $im = new ImageUpload();
     $fea = $im->where('id', $id)->first();
     $iname= $fea['LastName'] . $fea['FirstName'];
     $data =[
       'sid' => $id,
       'logged' => $session->get('id'),
       'destinations' => $name->where('id', $id)->findAll(),
       'name' => $name->where('id',$id)->first(),
       'image' => $im->where('id', $id)->findAll(),
       'id' => $im->where('id',$id)->first(),
       'count' => $rv->selectAvg('user_rating')->where('destination_id' , $id)->first(),
       'ccount' => $rv->select('count(destination_id) as cc')->where('destination_id', $id)->first(),
       'nearbyHotels' => $destination->getNearbyHotels($place_id[0]->place),
       'nearbyRestaurant'  => $destination->getNearbyRestaurant($place_id[0]->place),
       'locationImage' => $place_id[0]->image,
       "locationName" =>  $place_id[0]->name,
       "rating" => $review_id[0]->name,
       'aid'  => $id
     ];
     return view('destination_details', $data);
   }
 }
