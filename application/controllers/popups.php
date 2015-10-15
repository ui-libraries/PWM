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
	    fred ($this->input->post(), "postvars");
		
		$query = $this->db->get_where('popups_views', array('id' => $this->input->post('popup_view_id')));
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
        
}
