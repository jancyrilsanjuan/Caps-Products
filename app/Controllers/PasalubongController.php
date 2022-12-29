<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\DestinationModel;
use App\Models\ImageUpload;
use App\Models\ReviewModel;

class PasalubongController extends Controller
{
  public function pasalubong()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $destination->findAll(),
      'logged' => $session->get('id'),
    ];
    return view('pasalubongcenter', $data);
  }

//Pasalubong Center in Calapan
  public function pascal()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'calapan')->findAll(),
      'places' => $pasalubong->where('place', 'Calapan')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Baco
  public function pasbac()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'baco')->findAll(),
      'places' => $pasalubong->where('place', 'Baco')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in San Teodoro
  public function passan()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'san teodoro')->findAll(),
      'places' => $pasalubong->where('place', 'San Teodoro')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Puerto Galera
  public function paspue()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'puerto galera')->findAll(),
      'places' => $pasalubong->where('place', 'Puerto Galera')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Naujan
  public function pasnau()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'naujan')->findAll(),
      'places' => $pasalubong->where('place', 'Naujan')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Victoria
  public function pasvic()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'victoria')->findAll(),
      'places' => $pasalubong->where('place', 'Victoria')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Socorro
  public function passoc()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'socorro')->findAll(),
      'places' => $pasalubong->where('place', 'Socorro')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Pola
  public function paspola()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'pola')->findAll(),
      'places' => $pasalubong->where('place', 'Pola')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Pinamalayan
  public function paspin()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'pinamalayan')->findAll(),
      'places' => $pasalubong->where('place', 'Pinamalayan')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Gloria
  public function pasglo()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'Gloria')->findAll(),
      'places' => $pasalubong->where('place', 'Gloria')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Bansud
  public function pasban()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'bansud')->findAll(),
      'places' => $pasalubong->where('place', 'Bansud')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Bongabong
  public function pasbong()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'bongabong')->findAll(),
      'places' => $pasalubong->where('place', 'Bongabong')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Roxas
  public function pasrox()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'roxas')->findAll(),
      'places' => $pasalubong->where('place', 'Roxas')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Mansalay
  public function pasman()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'mansalay')->findAll(),
      'places' => $pasalubong->where('place', 'Mansalay')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

//Pasalubong Center in Bulalacao
  public function pasbul()
  {
    $pasalubong = new DestinationModel();
    $session = session();
    $data = [
      'destinations' => $pasalubong->findAll(),
      'logged' => $session->get('id'),
      'destinations' => $pasalubong->where('place', 'bulalacao')->findAll(),
      'places' => $pasalubong->where('place', 'Bulalacao')->where('category', 'Pasalubongcenter')->findAll(),
    ];
    return view('pasalubong_page', $data);
  }

  public function pasalubongcenter($id= null)
  {
    $pas = new PasalubongModel();
    $cli = $pas->where('id', $id)->first();
    $data = [
      'destinations' => $pas->where('id', $id)->findAll(),
      'name' => $pas->where('id',$id)->first()
    ];
    return view('pasalubong_details', $data);
  }

  public function test4($id= null)
  {
    $session = session();
    $destination = model(DestinationModel::class);
    $place_id = $destination->getIdPlace($id);
    $name = new DestinationModel();
    $rv = new ReviewModel();
    $client = $name->where('id', $id)->first();
    $cname= $client['LastName'] . $client['FirstName'];
    $pasalubongcenter = new ImageUpload();
    $fea = $pasalubongcenter->where('id', $id)->first();
    $iname= $fea['LastName'] . $fea['FirstName'];
    $data =[
      'sid' => $id,
      'logged' => $session->get('id'),
      'destinations' => $name->where('id', $id)->findAll(),
      'name' => $name->where('id',$id)->first(),
      'image' => $pasalubongcenter->where('id', $id)->findAll(),
      'id' => $pasalubongcenter->where('id',$id)->first(),
      'count' => $rv->selectAvg('user_rating')->where('destination_id' , $id)->first(),
      'ccount' => $rv->select('count(destination_id) as cc')->where('destination_id', $id)->first(),
      'nearbyHotels' => $destination->getNearbyHotels($place_id[0]->place),
      'nearbyRestaurant'  => $destination->getNearbyRestaurant($place_id[0]->place),
      'locationImage' => $place_id[0]->image,
      "locationName" =>  $place_id[0]->name,
      "rating" => $review_id[0]->name,
      'aid'  => $id
    ];
    return view('pasalubong_details', $data);
  }
}
