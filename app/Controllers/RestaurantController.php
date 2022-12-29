<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\DestinationModel;
use App\Models\RestaurantModel;
use App\Models\ImageUpload;
use App\Models\ReviewModel;

class RestaurantController extends Controller
{
//List of Restaurants
  public function restaurants()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $destination->findAll(),
      'logged' => $session->get('id'),
    ];
    return view('restaurants', $data);
  }

//Restaurants in Calapan City
  public function rescal()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        // $res = $restaurant->get('category');
        'destinations' => $restaurant->where('place', 'calapan')->findAll(),
          'places' => $restaurant->where('place', 'Calapan')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
      // var_dump($data);
    }

//Restaurants in Baco
    public function resbaco()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations' => $restaurant->where('place', 'baco')->findAll(),
      'places' => $restaurant->where('place', 'Baco')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in San Teodoro
    public function ressan()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations' => $restaurant->where('place', 'san teodoro')->findAll(),
        'places' => $restaurant->where('place', 'San Teodoro')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Puerto Galera
    public function respue()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations' => $restaurant->where('place', 'puerto galera')->findAll(),
        'places' => $restaurant->where('place', 'Puerto Galera')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Naujan
    public function resnau()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'naujan')->findAll(),
        'places' => $restaurant->where('place', 'Naujan')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Victoria
    public function resvic()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'victoria')->findAll(),
        'places' => $restaurant->where('place', 'Victoria')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Socorro
    public function ressoc()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'socorro')->findAll(),
        'places' => $restaurant->where('place', 'Socorro')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Pola
    public function respola()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'pola')->findAll(),
        'places' => $restaurant->where('place', 'Pola')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Pinamalayan
    public function respin()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data = [
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'pinamalayan')->findAll(),
        'places' => $restaurant->where('place', 'Pinamalayan')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Gloria
    public function resglo()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data =[
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'gloria')->findAll(),
        'places' => $restaurant->where('place', 'Gloria')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Bansud
    public function resban()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data =[
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'bansud')->findAll(),
        'places' => $restaurant->where('place', 'Bansud')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Bongabong
    public function resbong()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data =[
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'bongabong')->findAll(),
        'places' => $restaurant->where('place', 'Bongabong')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Roxas
    public function resrox()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data =[
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'roxas')->findAll(),
        'places' => $restaurant->where('place', 'Roxas')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Mansalay
    public function resman()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data =[
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'mansalay')->findAll(),
        'places' => $restaurant->where('place', 'Mansalay')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

//Restaurants in Bulalacao
    public function resbul()
    {
      $restaurant = new DestinationModel();
      $session = session();
      $data =[
        'destinations' => $restaurant->findAll(),
        'logged' => $session->get('id'),
        'destinations'=> $restaurant->where('place', 'bulalacao')->findAll(),
        'places' => $restaurant->where('place', 'Bulalacao')->where('category', 'Restaurant')->findAll(),
      ];
      return view('restaurant_page', $data);
    }

    public function restaurant($id= null)
    {
      $name = new DestinationModel();
      $client = $name->where('id', $id)->first();
      $cname= $client['LastName'] . $client['FirstName'];
      $data =[
        'destinations' => $name->where('id', $id)->findAll(),
        'name' => $name->where('id',$id)->first()
      ];
      return view('restaurant_details', $data);
    }

    public function test3($id= null)
    {
      $session = session();
      $destination = model(DestinationModel::class);
      $place_id = $destination->getIdPlace($id);
      $name = new DestinationModel();
      $rv = new ReviewModel();
      $client = $name->where('id', $id)->first();
      $cname= $client['LastName'] . $client['FirstName'];
      $restaurant = new ImageUpload();
      $fea = $restaurant->where('id', $id)->first();
      $iname= $fea['LastName'] . $fea['FirstName'];
      $data =[
        'sid' => $id,
        'logged' => $session->get('id'),
        'destinations' => $name->where('id', $id)->findAll(),
        'name' => $name->where('id',$id)->first(),
        'image' => $restaurant->where('id', $id)->findAll(),
        'id' => $restaurant->where('id',$id)->first(),
        'count' => $rv->selectAvg('user_rating')->where('destination_id' , $id)->first(),
        'ccount' => $rv->select('count(destination_id) as cc')->where('destination_id', $id)->first(),
        'nearbyHotels' => $destination->getNearbyHotels($place_id[0]->place),
        'nearbyRestaurant'  => $destination->getNearbyRestaurant($place_id[0]->place),
        'locationImage' => $place_id[0]->image,
        "locationName" =>  $place_id[0]->name,
        "rating" => $review_id[0]->name,
        'aid'  => $id
      ];
      return view('restaurant_details', $data);
    }
}
