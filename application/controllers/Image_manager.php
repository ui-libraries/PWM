<?php
if (!defined('BASEPATH'))
	exit('No direct access allowed');

class Image_manager extends CI_Controller {
	private $userGroup;
	private $data; //array of information passed to view
	private $relative_path;
	
	function __construct() {
		parent::__construct();
		
	}
		
	function index() {
		//if ($this->session->userdata("group_id") < 6 ) {redirect ("exceptions/exPermission"); }
		if ($this->input->post('admin')) {
			redirect('admin');
		} elseif ($this->input->post('addnew')) {
			redirect('image_manager/uploadimage');
		} elseif ($this->input->post('search')) {
			//$this->find_images();
			$searchVal=$this->input->post('searchVal');
		    $this->data['searchVal'] = $searchVal;
			if (!empty($searchVal)){
				$this->db->like('image_name', $searchVal);
				$this->db->or_like('source_path', $searchVal);
			}
			$this->db->order_by('source_path');
			$this->db->order_by('image_name');
			$query = $this->db->get('images');
        } else { 
	        $this->load->library('pagination');
	        $config["base_url"] = base_url() . "index.php/image_manager/index";
	        $config["total_rows"] = $this->db->count_all('images');
	        $config["per_page"] = 10;
	        //$config["uri_segment"] = 3;
	        $this->pagination->initialize($config);
	        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
			$this->db->order_by('source_path');
			$this->db->order_by('image_name');
			$this->db->limit($config['per_page'],$page);
			$query = $this->db->get('images');
	        $this->data["links"] = $this->pagination->create_links();
        }
		if ($query->num_rows() > 0) {
			foreach ($query->result() as $row) {
				$thumb_path = $row->source_path.$row->thumb_name ;
				$thumb = img(image_url($thumb_path));
				$image_path = $row->source_path.$row->image_name;
				$this->data['images'][]= array(
					'id'=>$row->id,
					'thumb'=> $thumb,
					'image_name'=> $row->image_name,
					'image_size'=> $row->image_size,
					'image_path'=> "../../resources/image/$image_path"
				);
//fred ($thumb,"thumb");
//fred ($this->data, "this data");
//die;
			}
		} 							
        $this->load->view('v_image_manage', $this->data);
    }


	function build_library() {
		
		//for each file in directory structure
		//strip off server path and return relative filename path		
		$path = FCPATH."resources/image/";
		$tostrip = strlen($path);
		$file_list = get_filenames($path, $include_path = TRUE);
		$file_names = get_filenames($path, $include_path = false);
		
		foreach ($file_list as $key=>$file_path){
			if (strpos($file_path,"_thumb")===false)  {	//pay no attention to thumbnail files

				$relative_path = substr($file_path, $tostrip);
				$image_data['source_path'] = substr($relative_path, 0, strlen($relative_path)-strlen($file_names[$key]));
				$image_data['image_name'] = $file_names[$key];
				$image_info = getimagesize ($file_path);

				$image_data['image_size']=$image_info[3];
				$mimetype = $image_info['mime'];
				
				//accept only jpeg, png, and gif file types
				if ($mimetype == 'image/jpeg' || $mimetype == 'image/png' || $mimetype == 'image/gif' ) {
	
					//create thumb_name				
					$filename_array=  explode( ".", $file_names[$key]);
	//fred ($filename_array, "filename_array");
					$image_data['thumb_name'] = $filename_array[0] . "_thumb" . "." . $filename_array[1];
							
					//check to see if record exists in the database
					$this->db->where ('source_path',$image_data['source_path']);
					$this->db->where ('image_name',$image_data['image_name']);
					$query=$this->db->get('images');
					
					//source_path and image_name are a unique key in the table, therefore 0 or 1 rows will be found
					if ($query->num_rows()>0){
						//update
						$id = $query->row()->id;
						$this->db->where('id', $id);
						$this->db->update('images', $image_data);
					} else {
						//add
						$thumb_status = $this->create_thumb($file_path);
						if (!empty($thumb_status)) {
							fred ($thumb_status, "thumb_status");						
							//do not save the thumb_name
							$image_data['thumb_name'] = '';				
						$this->db->insert('images', $image_data);
						}
					}
				}			
			}	
		}				
	}

	function uploadimage() {
		//if ($this->session->userdata("group_id") < 6 ) {redirect ("exceptions/exPermission"); }

		$this->data['msg'] = "";
		if ($this->input->post('return')) {
			redirect('image_manager'); 
		} elseif ($this->input->post('upload')) {


			$county= $this->input->post('county');
			$query= $this->db->get_where('counties', array('id'=>$county));
			$countyname = $query->row()->county;
			
			
			$imagetype = $this->input->post('imagetype');
			$storyname =  $this->input->post('storyname');
			
			$this->relative_path="";
			if (empty($countyname)) {
				$this->data['errmsg'] = "No County specified";
			} else {
				$this->relative_path .= strtolower($countyname)."/";
			}
			if ($imagetype == "popup") { 
				$this->relative_path .= "popups/";
			} elseif ($imagetype == "story") {
				if (!empty($storyname)) {
					$this->relative_path .= $storyname."/";
				} else {
					$this->data['errmsg'] = "Story Image Type without storyname";
				}
			} else {
				$this->data['errmsg'] = "No image type specified";
			}
			$upload_path = FCPATH."resources/image/".$this->relative_path;
			
			if (empty ($this->data['errmsg'])) {				
				$config['upload_path'] = $upload_path;
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = 0;
				$this->load->library('upload', $config);
				$this->upload->initialize($config);
				if (!$this->upload->do_upload()) {
					$this->data['errmsg'] = $this->upload->display_errors();
				} else {
					if (!empty($msg)){
						$this->data['errmsg']= $msg;
					} else {
						$this->data['msg'] .= "image file uploaded";
						$this->data['upload_data'] = $this->upload->data();
						$this->create_thumb();
						$this->insert_imagedb();
						$this->data['thumb_url'] = base_url($this->relative_path);
					}
				}
			}
		}
		$query=$this->db->get('counties');
		
		foreach ($query->result() as $row) {
			$counties[$row->id]= $row->county;
		}
		
		$this->data['counties'] = $counties;
		$this->load->view('v_image_upload', $this->data);
	}
	
/*
	function find_images(){
		
		$searchVal=$this->input->post('searchVal');
        $this->data['searchVal'] = $searchVal;
		$this->data['images'] = array();
		if (!empty($searchVal)){
			$this->db->like('image_name', $searchVal);
		}
		$this->db->order_by('image_name');
		$query = $this->db->get('images');
		if ($query->num_rows() > 0) {
			foreach ($query->result() as $row) {
				$thumb_path = "images/survey_img/".$row->thumb_name ;
				$thumb = img($thumb_path);
				$this->data['images'][]= array(
					'id'=>$row->id,
					'thumb'=> $thumb,
					'image_name'=> $row->image_name,
					'image_size'=> $row->image_size
				);
			}
		} 						
	}
*/
	
	
	function create_thumb($source_image=null) {
		if (empty($source_image)){ $source_image = $this->data['upload_data']['full_path']; }
		$config['source_image'] = $source_image;
		$config['image_library'] = 'gd2';
		$config['create_thumb'] = TRUE;
		$config['maintain_ratio'] = TRUE;
		$config['width'] = 100;
		$config['height'] = 100;
		$this->load->library('image_lib', $config);
		$this->image_lib->initialize($config);
		$this->image_lib->resize();
		if ( ! $this->image_lib->resize()){
       		echo $this->image_lib->display_errors();
		}

		return $this->image_lib->display_errors();
	}
	
	function insert_imagedb() {
		$qdata=array (
			'image_name'=>$this->data['upload_data']['file_name'],
			'source_path'=>$this->relative_path,
			'thumb_name' =>$this->data['upload_data']['raw_name']."_thumb".$this->data['upload_data']['file_ext'],
			'image_size'=>$this->data['upload_data']['image_size_str']);
		$this->db->insert('images',$qdata);
	}
	
	function delete_image(){
		$this->db->where('id', $this->input->post('imageID'));
		$query = $this->db->get_where('images', array('id'=>$this->input->post('imageID')));
		$row=$query->row();
		if (!empty($row)) {
			//$file_to_delete = $row->source_path.$row->image_name;
			$file_to_delete = FCPATH."resources/image/".$row->source_path.$row->image_name;
			unlink ($file_to_delete);
			$file_to_delete = FCPATH."resources/image/".$row->source_path.$row->thumb_name;
			unlink ($file_to_delete);
			$this->db->where('id', $row->id);
			$this->db->delete('images');
		}
		redirect('image_manager'); 	
	}
	
}
