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
			}
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
			$this->db->order_by('image_name');
			$this->db->limit($config['per_page'],$page);
			$query = $this->db->get('images');
	        $this->data["links"] = $this->pagination->create_links();
        }
		if ($query->num_rows() > 0) {
			foreach ($query->result() as $row) {
				$thumb_path = base_url().$row->source_path."/".$row->thumb_name ;
				
				$thumb = img($thumb_path);
				$this->data['images'][]= array(
					'id'=>$row->id,
					'thumb'=> $thumb,
					'image_name'=> $row->image_name,
					'image_size'=> $row->image_size
				);
			}
		} 							
        $this->load->view('v_image_manage', $this->data);
    }


	function uploadimage() {
		//if ($this->session->userdata("group_id") < 6 ) {redirect ("exceptions/exPermission"); }

		$this->data['msg'] = "";
		if ($this->input->post('return')) {
			redirect('image_manager'); 
		} elseif ($this->input->post('upload')) {


			$countyname= $this->input->post('countyname');
			$imagetype = $this->input->post('imagetype');
			$storyname =  $this->input->post('storyname');
			
			$this->relative_path="resources/image/";
			if (empty($countyname)) {
				$this->data['errmsg'] = "No County specified";
			} else {
				$this->relative_path .= $countyname."/";
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
			$upload_path = FCPATH.$this->relative_path;
/*
fred($upload_path, "upload path");
die;
*/
	
			
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
					}
				}
			}
		}
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
	
	
	function create_thumb() {
		$source_image = $this->data['upload_data']['full_path'];
		$config['image_library'] = 'gd2';
		$config['source_image'] = $source_image;
		$config['create_thumb'] = TRUE;
		$config['maintain_ratio'] = TRUE;
		$config['width'] = 100;
		$config['height'] = 100;
		$this->load->library('image_lib', $config);
		$this->image_lib->resize();
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
			$file_to_delete = $row->source_path.$row->image_name;
			unlink ($file_to_delete);
			$file_to_delete = $row->source_path.$row->thumb_name;
			unlink ($file_to_delete);
			$this->db->where('id', $row->id);
			$this->db->delete('images');
		}
		redirect('image_manager'); 
		
	}
	
}
