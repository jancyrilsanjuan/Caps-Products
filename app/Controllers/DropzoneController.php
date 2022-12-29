<?php
namespace App\Controllers;
use App\Controllers\BaseController;
use App\Models\ImageUpload;
use App\Models\TagPlaceModel;


class DropzoneController extends BaseController
{
	public function dropzone()
	{
		return view('upload-view');
	}

	//Inserting Data
	public function tag_insert()
	{
		$session = session();
		$description=$this->request->getVar('description');
		$sid = $this->request->getVar('sid');
	  $imageId = new TagPlaceModel();
		$id = $session->get('id');
		$data = [
			'description' => $description,
			'location_id' => $sid,
			'picture_id' => $session->get('id'),
			'user_id' => $session->get('id'),
			// "uploaded_by" =>$id,
			"status"	=>'pending',
		];
		$imageId->save($data);
	}

	public function dropzoneStore()
	{
		$session = session();
		$image = $this->request->getFile('file');
		$sid = $this->request->getVar('sid');
		$imageName = $image->getName();
		$image->move('im/tst', $imageName);
		$imageUpload = new ImageUpload();
		// $session = session();
		// $id = 1; kunin yung session ID
		$id = $session->get('id');
		$data = [
			// 'uploaded_by' => $session->get('id'),
			"uploaded_by" => $session->get('name'),
			"destination_id" => $sid,
			"image" => $imageName,
			"status"	=>'pending',
		];
		$imageUpload->insert($data);
		return json_encode(array(
			"status" => 1,
			"image" => $imageName
		));
	}
}
