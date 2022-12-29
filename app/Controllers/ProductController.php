<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\DestinationModel;
use App\Models\ImageUpload;
use App\Models\ReviewModel;

class ProductController extends Controller
{
  public function product_page()
  {
    return view('product_page');
  }
//Products in Calapan City
  public function productcalapan()
  {
    $destination = new DestinationModel();
    $session = session();
    $data =[
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'calapan')->findAll(),
      'places' => $destination->where('place', 'Calapan')->where('category', 'Products')->findAll(),
    ];
    return view('product_page', $data);
  }

//Destinations in Baco
  public function productbaco()
  {
    $destination = new DestinationModel();
    $session = session();
    $data = [
      'logged' => $session->get('id'),
      'destinations' => $destination->where('place', 'baco')->findAll(),
      'places' => $destination->where('place', 'Baco')->where('category', 'Products')->findAll(),
    ];
    return view('product_page', $data);
  }

//Destinations in San Teodoro
public function productsan()
{
  $destination = new DestinationModel();
  $session = session();
  $data = [
    'logged' => $session->get('id'),
    'destinations' => $destination->where('place', 'san teodoro')->findAll(),
    'places' => $destination->where('place', 'San Teodoro')->where('category', 'Products')->findAll(),
  ];
  return view('product_page', $data);
}

  public function productpue()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'puerto galera')->findAll(),
        'places' => $destination->where('place', 'Puerto Galera')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Naujan
    public function productnau()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'naujan')->findAll(),
        'places' => $destination->where('place', 'Naujan')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Victoria
    public function productvic()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'victoria')->findAll(),
        'places' => $destination->where('place', 'Victoria')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Socorro
    public function productsoc()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'socorro')->findAll(),
        'places' => $destination->where('place', 'Socorro')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Pola
    public function productpola()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'pola')->findAll(),
        'places' => $destination->where('place', 'Pola')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Pinamalayan
    public function productpin()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'pinamalayan')->findAll(),
        'places' => $destination->where('place', 'Pinamalayan')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Gloria
    public function productglo()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'gloria')->findAll(),
        'places' => $destination->where('place', 'Gloria')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Bansud
    public function productban()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'bansud')->findAll(),
        'places' => $destination->where('place', 'Bansud')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Bongabong
    public function productbong()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'bongabong')->findAll(),
        'places' => $destination->where('place', 'Bongabong')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Roxas
    public function productrox()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'roxas')->findAll(),
        'places' => $destination->where('place', 'Roxas')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Mansalay
    public function productman()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'mansalay')->findAll(),
        'places' => $destination->where('place', 'Mansalay')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
    }

  //Destinations in Bulalacao
    public function productbul()
    {
      $destination = new DestinationModel();
      $session = session();
      $data = [
        'logged' => $session->get('id'),
        'destinations' => $destination->where('place', 'bulalacao')->findAll(),
        'places' => $destination->where('place', 'Bulalacao')->where('category', 'Products')->findAll(),
      ];
      return view('product_page', $data);
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
