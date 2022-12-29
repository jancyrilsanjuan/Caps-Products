<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\DestinationModel;
use App\Models\ImageUpload;
use App\Models\ReviewModel;

class HotelsController extends Controller
{
// List of Hotels
  public function hotels()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data =[
      'destinations' => $accomodation->findAll(),
      'logged' => $session->get('id'),
    ];
    return view('hotels', $data);
  }

//Hotels in Calapan City
  public function hotcal()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'calapan')->findAll(),
      'places' => $accomodation->where('place', 'Calapan')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Baco
  public function hotbaco()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'baco')->findAll(),
      'places' => $accomodation->where('place', 'Baco')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in San Teodoro
  public function hotsan()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'san teodoro')->findAll(),
      'places' => $accomodation->where('place', 'San Teodoro')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Puerto Galera
  public function hotpue()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'puerto galera')->findAll(),
      'places' => $accomodation->where('place', 'Puerto Galera')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Naujan
  public function hotnau()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'naujan')->findAll(),
      'places' => $accomodation->where('place', 'Naujan')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Victoria
  public function hotvic()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'victoria')->findAll(),
      'places' => $accomodation->where('place', 'Victoria')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Socorro
  public function hotsoc()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'socorro')->findAll(),
      'places' => $accomodation->where('place', 'Socorro')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Pola
  public function hotpola()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'pola')->findAll(),
      'places' => $accomodation->where('place', 'Pola')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Pinamalayan
  public function hotpin()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'pinamalayan')->findAll(),
      'places' => $accomodation->where('place', 'Pinamalayan')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Gloria
  public function hotglo()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'gloria')->findAll(),
      'places' => $accomodation->where('place', 'Gloria')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Bansud
  public function hotban()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'bansud')->findAll(),
      'places' => $accomodation->where('place', 'Bansud')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Bongabong
  public function hotbong()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'bongabong')->findAll(),
      'places' => $accomodation->where('place', 'Bongabong')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Roxas
  public function hotrox()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'roxas')->findAll(),
      'places' => $accomodation->where('place', 'Roxas')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Mansalay
  public function hotman()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'mansalay')->findAll(),
      'places' => $accomodation->where('place', 'Mansalay')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

//Hotels in Bulalacao
  public function hotbul()
  {
    $accomodation = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $accomodation->where('place', 'bulalacao')->findAll(),
      'places' => $accomodation->where('place', 'Bulalacao')->where('category', 'Hotel')->findAll(),
    ];
    return view('hotel_page', $data);
  }

  public function hotel($id= null)
  {
    $name = new DestinationModel();
    $client = $name->where('id', $id)->first();
    $cname= $client['LastName'] . $client['FirstName'];
    $data =[
      'destinations' => $name->where('id', $id)->findAll(),
      'name' => $name->where('id',$id)->first(),
      'imi' => $name->where('id',$id)->first(),
      // 'id' =>$id,
      // 'test' =>$client['id']
    ];
    return view('hotel_details', $data);
  }

  public function gethotel($hotel)
  {
    return $this->build->where('hotel', $hotel)->get()->getResult();
  }

  public function test2($id= null)
  {
    $session = session();
    $destination = model(DestinationModel::class);
    $place_id = $destination->getIdPlace($id);
    $name = new DestinationModel();
    $rv = new ReviewModel();
    $client = $name->where('id', $id)->first();
    $cname= $client['LastName'] . $client['FirstName'];
    $hotel = new ImageUpload();
    $fea = $hotel->where('id', $id)->first();
    $iname= $fea['LastName'] . $fea['FirstName'];
    $data =[
      'sid' => $id,
      'logged' => $session->get('id'),
      'destinations' => $name->where('id', $id)->findAll(),
      'name' => $name->where('id',$id)->first(),
      'image' => $hotel->where('id', $id)->findAll(),
      'id' => $hotel->where('id',$id)->first(),
      'count' => $rv->selectAvg('user_rating')->where('destination_id' , $id)->first(),
      'ccount' => $rv->select('count(destination_id) as cc')->where('destination_id', $id)->first(),
      'nearbyHotels' => $destination->getNearbyHotels($place_id[0]->place),
      'nearbyRestaurant'  => $destination->getNearbyRestaurant($place_id[0]->place),
      'locationImage' => $place_id[0]->image,
      "locationName" =>  $place_id[0]->name,
      "rating" => $review_id[0]->name,
      'aid'  => $id
    ];
    return view('hotel_details', $data);
  }
}
