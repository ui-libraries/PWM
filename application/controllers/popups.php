<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Popups extends CI_Controller {
            
    public function __construct () {
        parent::__construct();
    }
    
    public function search_popup() {
		$this->load->model('m_popups_views');
		$this->load->library('table');
		$this->m_popups_views->searchval = $this->input->post('searchval');
		$data['fetchlist'] = $this->m_popups_views->fetch_list();
			
		$this->load->view('v_popups_find', $data);
	}        	
     
    public function add_edit_popup() {
		
		if ($this->input->post('addnew')) {
			$popup_view_id = $this->save();
			$query = $this->db->get_where('popups_views', array('id' => $popup_view_id));
		} else {
			$query = $this->db->get_where('popups_views', array('id' => $this->input->post('popup_view_id')));
		}
		$popups_view = $query->row();
		
		$query = $this->db->get_where('popups', array('id' => $popups_view->f_popup_id));
		$popup = $query->row();

		$query = $this->db->get_where('popups_markers', array('id' => $popups_view->f_marker_id));
		$marker = $query->row();
		
		$query = $this->db->get_where('popups_icons', array('id' => $popups_view->f_icon_id));
		$icon = $query->row();

		$query = $this->db->get_where('popups_content', array('id' => $popups_view->f_content_id));
		$popup_content = $query->row();


		$data['popups_view']=$popups_view;
		$data['popup']= $popup;
		$data['marker']= $marker;
		$data['icon']= $icon;
		$data['popup_content']= $popup_content;
		$this->load->view('v_add_edit_popup', $data);	
    }
    
    public function save() {
	    $popup_view_id = $this->input->post('popup_view_id');
	    
	    if (!empty($popup_view_id)) {
		    $update = true;
	    	//preload objects
			$query=$this->db->get_where('popups_views', array('id' => $popup_view_id));
			$popup_view = $query->row();
			$popup_view->viewname = $this->input->post('storyview');
			$this->db->replace('popups_views', $popup_view);			
	    } else {
	    	$add = true;
			$this->db->insert('popups_markers', array('id'=>Null));
			$popup_marker_id = $this->db->insert_id();

			$this->db->insert('popups_icons', array('id'=>Null));
			$popup_icon_id = $this->db->insert_id();
			
			$this->db->insert('popups', array('id'=>Null));
			$popup_id = $this->db->insert_id();
			
			$this->db->insert('popups_content', array('id'=>Null));
			$popup_content_id = $this->db->insert_id();
			
		    $this->db->insert('popups_views', array('id'=>Null));
		    $popup_view_id = $this->db->insert_id();
			$query=$this->db->get_where('popups_views', array('id' => $popup_view_id));
			$popup_view = $query->row();
			$popup_view->viewname = $this->input->post('storyview');
			$popup_view->f_marker_id = $popup_marker_id;
			$popup_view->f_icon_id = $popup_icon_id;
			$popup_view->f_popup_id = $popup_id;
			$popup_view->f_content_id = $popup_content_id;
			$this->db->replace('popups_views',$popup_view);
			return ($popup_view_id);
		}
			
		$query=$this->db->get_where('popups_markers', array('id' => $popup_view->f_marker_id));
		$popup_marker = $query->row();
		$popup_marker->markername = $this->input->post('markername');
		$popup_marker->coords = $this->input->post('coords');
		$popup_marker->layergroup = $this->input->post('layergroup');
		$popup_marker->markertype = $this->input->post('markertype');
		$this->db->replace('popups_markers',$popup_marker);
		
		$query=$this->db->get_where('popups_icons', array('id' => $popup_view->f_icon_id));
		$popup_icon = $query->row();
		$popup_icon->iconname = $this->input->post('iconname');
		$popup_icon->description = $this->input->post('icondesc');
		$popup_icon->iconurl = $this->input->post('iconurl');
		$popup_icon->iconsize_x = $this->input->post('iconsize_x');
		$popup_icon->iconsize_y = $this->input->post('iconsize_y');
		$this->db->replace('popups_icons', $popup_icon);

		$query=$this->db->get_where('popups', array('id' => $popup_view->f_popup_id));
		$popup = $query->row();
		$popup->popupname = $this->input->post('popup_name');
		$popup->maxwidth = $this->input->post('popup_max_width');
		$popup->minwidth = $this->input->post('popup_min_width');
		$this->db->replace('popups', $popup);
		
		$query=$this->db->get_where('popups_content', array('id' => $popup_view->f_content_id));
		$popup_content = $query->row();
		$popup_content->title = $this->input->post('popup_title_text');
		$popup_content->subtitle = $this->input->post('popup_subtitle_text');
		$popup_content->imageurl = $this->input->post('popup_imageurl');
		$popup_content->body = $this->input->post('body');
		$popup_content->buttontxt = $this->input->post('popup_buttontxt');
		$popup_content->buttonurl = $this->input->post('popup_storyurl');
		$this->db->replace('popups_content', $popup_content);
		
		
		$this->search_popup();
    }
}
