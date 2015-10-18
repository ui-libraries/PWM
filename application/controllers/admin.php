<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {
        
    public $view_data;
    
    public function __construct () {
        parent::__construct();
    }

    public function index(){   
        //$data['main_menu'] = $this->main_menu;
        $this->load->view('v_admin');
	}
        
    public function import_menu(){
        $this->load->model('m_menus');
        if ($this->input->post('upload')){
            $do_upload = $this->m_menus->do_upload('userfile');
            if (!$do_upload) {
               $data['error_msg'] = "<strong>Error!</strong>".$this->upload->display_errors();
			   $this->load->view('v_status', $data);
			} else {
	            $data['status_msg'] = "Uploaded ".$this->upload->data('file_name')."<br />";
				$this->load->view('v_status', $data);
            }
            //$this->m_menus->upload_excel();
        } elseif ($this->input->post('return')) {
            redirect('admin');
        } elseif ($this->input->post('map')) {
            redirect('home');
        } else {
           	$this->load->view('v_menus_upload');
        }
    }

        public function getinfo() {
	         $this->load->view('v_getinfo');
        }
        
/*
        public function search_popup() {
			$this->load->model('m_popups_views');
			$this->load->library('table');
			$this->m_popups_views->searchval = $this->input->post('searchval');
			$data['fetchlist'] = $this->m_popups_views->fetch_list();
	
			$this->load->view('v_popups_find', $data);
		}        	
         
        public function add_edit_popup() {
			
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
			
	        $this->load->view('v_addpopup', $data);
        }
*/
        
}
