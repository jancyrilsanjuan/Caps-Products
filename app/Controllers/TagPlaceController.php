<?php
namespace App\Controllers;
use App\Models\TagPlaceModel;
use App\Models\ImageUpload;


class TagPlaceController extends BaseController
{
  public function tagging_place()
  {
    $tagging = new TagPlaceModel();
    $image = new ImageUpload();
    $data = [
      'tag_place' => $tagging->orderBy('id', 'ASC')->findAll(),
      'images' => $image->orderBy('id', 'ASC')->findAll(),
  ];
    return view('tagging_place', $data);
  }
  public function tag_insert()
  {
    return view('tag_insert');
  }
}
