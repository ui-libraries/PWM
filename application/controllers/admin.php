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
//fred ($data,"data");
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
                
    public function import_popups(){
        $this->load->model('popups');
        $data['status_msg'] = $this->popups->load_csv();
        $this->load->view('v_status', $data);        
    }
     public function getinfo() {
         $this->load->view('v_getinfo');
     }        
}
