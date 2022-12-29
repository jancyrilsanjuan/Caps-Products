<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\DestinationModel;
use App\Models\ImageUpload;
use App\Models\ReviewModel;

class ProfileController extends Controller
{
//Search Data
  public function search()
  {
  $searchModel = new \App\Models\SearchModel();
  $search = $this->request->getVar('a');
  if(!empty($search)){
    $name=$searchModel->like(['name'=>'%'.$search. '%'])->findAll();
    return view ('search', ['name' => $name]);
  }
  return view('search');
  }


//Inserting Rate Data
  public function rate()
  {
    $session = session();
    $rm = new ReviewModel();
    if(isset($_POST["rating_data"]))
    {
      $id = $session->get('id');
      $did = $_POST["did"];
      $d = $rm->where('user_id', $id)->where('destination_id', $did)->first();
      if($d){
        echo 'meron';
      }else{
        $data = [
          'user_id' => $session->get('id'),
          'destination_id'  =>$_POST["did"],
          'user_name'		=>	$session->get('name'),
          'user_rating'		=>	$_POST["rating_data"],
          'user_review'		=>	$_POST["user_review"],
        ];
         $rm->save($data);
         // return view('destination_details');
      }
    }
  }

  public function rates($sid)
  {
    $session = session();
    $rm = new ReviewModel();
    if(isset($_POST["action"]))
    {
    $average_rating = 0;
    $total_review = 0;
    $five_star_review = 0;
    $four_star_review = 0;
    $three_star_review = 0;
    $two_star_review = 0;
    $one_star_review = 0;
    $total_user_rating = 0;
    $review_content = array();
    $id = $session->get('id');
    $did = $_POST["did"];
    $d = $rm->where('destination_id', $sid)->findAll();
    foreach($d as $row)
    {
      $review_content[] = array(
        'user_name'		=>	$row["user_name"],
        'user_review'	=>	$row["user_review"],
        'rating'		=>	$row["user_rating"],
        'datetime'		=>	date('l jS, F Y h:i:s A', $row["datetime"])
      );
      if($row["user_rating"] == '5')
      {
        $five_star_review++;
      }
      if($row["user_rating"] == '4')
      {
        $four_star_review++;
      }
      if($row["user_rating"] == '3')
      {
        $three_star_review++;
      }
      if($row["user_rating"] == '2')
      {
        $two_star_review++;
      }
      if($row["user_rating"] == '1')
      {
        $one_star_review++;
      }
      $total_review++;
      $total_user_rating = $total_user_rating + $row["user_rating"];
    }
    $average_rating = $total_user_rating / $total_review;
    $output = array(
      'average_rating'	=>	number_format($average_rating, 1),
      'total_review'		=>	$total_review,
      'five_star_review'	=>	$five_star_review,
      'four_star_review'	=>	$four_star_review,
      'three_star_review'	=>	$three_star_review,
      'two_star_review'	=>	$two_star_review,
      'one_star_review'	=>	$one_star_review,
      'review_data'		=>	$review_content
    );
    echo json_encode($output);
  }
}

  public function load_rate()
  {
    $am = new ReviewModel();
    if(isset($_POST["rating_data"]))
    {
    	$data = [
    		':user_name'		=>	$_POST["user_name"],
    		':user_rating'		=>	$_POST["rating_data"],
    		':user_review'		=>	$_POST["user_review"],
    		':datetime'			=>	time()
    	];
      $am->view($data);
    }
  }

  public function index()
  {
    $destination = new DestinationModel();
    $session = session();
    $data =[
      'destinations' => $destination->select('name, id, place, location, category, image, description, latitude, longitude, fare, foods, price')->selectCount('review_table.destination_id','count')->selectAvg('user_rating','ave')->where('destinations.category', 'Destination')->join('review_table', 'review_table.destination_id = destinations.id', 'left')->groupBy("destinations.id")->findAll(),
      'logged' => $session->get('id'),
    ];
    return view('homepage', $data);
  }

  public function destination()
  {
    $model = new DestinationModel();
    $session = session();
    $data =[
      'destinations' => $model->findAll(),
      'logged' => $session->get('id'),
      'categories' => $model->where('category', 'Destination')->findAll(),
    ];
    return view('destination', $data);
  }

//Travel Advisory
  public function traveladvisory()
  {
    $destination = new DestinationModel();
    $session = session();
    $data =[
      'destinations' => $destination->findAll(),
      'logged' => $session->get('id'),
    ];
    return view('traveladvisory', $data);
  }

  public function testingData()
  {
    $destination = model(DestinationModel::class);
    $data = $destination->getIdPlace();
    $datas = $destination->getNearbyHotels($data[0]->place);
    var_dump($datas);
  }

//About in System
  public function about()
  {
    $destination = new DestinationModel();
    $session = session();
    $data =[
      'destinations' => $destination->findAll(),
      'logged' => $session->get('id'),
    ];
    return view('about', $data);
  }

//Contact Details
  public function contact()
  {
    $destination = new DestinationModel();
    $session = session();
    $data =[
      'destinations' => $destination->findAll(),
      'logged' => $session->get('id'),
    ];
    return view('contact', $data);
  }
}
