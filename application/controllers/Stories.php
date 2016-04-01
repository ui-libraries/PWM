<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Stories extends CI_Controller {

	public function __construct () {
        parent::__construct();
		$this->load->model('m_stories');
    }

    public function search_story() {
		$this->load->library('table');
		$this->m_stories->searchval = $this->input->post('searchVal');
		$data['fetchlist'] = $this->m_stories->fetch_list();
		$this->load->view('v_stories_manage', $data);
	}
	
	public function add_edit_story() {
		$story_id = $this->input->post('story_id');
		
		$query = $this->db->get('counties');
		$data['counties']=$query->result();
		
		if (!empty($story_id)) {
			$data['story'] = $this->m_stories->load_story($story_id);
			$data['edit_status'] = "edit";
		} else {
			$data['story'] = $this->m_stories->load_story();
			$data['edit_status'] = "new";
		}
		$this->load->view('v_story_add_edit', $data);
	}

	public function delete_story() {
		//don't know if I am going to do this yet
	}

	public function cancel() {
		//delete all of the items that are not used elsewhere
		//id, view_name, f_marker_id, f_icon_id, f_popup_id, f_content_id
		if ($this->input->post('story_status') == "new") {
			//delete the record
			$this->db->delete('stories', array('id', $this->input->post('story_id')));
		} else {//cancel editing an existing story, do nothing}
			$this->search_story();
		}
	}

	public function save() {

//			echo form_hidden('story_id',$story->id);
//			echo form_hidden('story_status',$status); //"edit" or "new"
//			'name' => 'story_title',
//		    'name' => 'story_location',
//			'name' => 'story_byline',
//		         <select name="county">
//		    	<textarea name="story_content" rows="66" cols="112" class="monospace">
		if (empty($this->input->post('cancel'))) {
			$updateArray = array(
				'id' => 			$this->input->post('story_id'),
				'f_county_id' =>	$this->input->post('county'),
				'story_name'=>		$this->input->post('story_name'),
				'title'	=>			$this->input->post('story_title'),
				'location'	=>		$this->input->post('story_location'), 
				'byline' =>			$this->input->post('story_byline'), 
				'story_content'=>	$this->input->post('story_content'),
				'status' =>			$this->input->post('status')
			);

			$this->db->replace('stories', $updateArray);

			if ($this->input->post('save_go_list')) {
				$this->search_story();
			} else if ($this->input->post('save_go_admin')) {
				redirect('admin');
			}
		} else {
			redirect('admin');
		}
	}
}
