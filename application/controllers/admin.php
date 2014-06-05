<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/home
	 *	- or -  
	 * 		http://example.com/index.php/home/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
        
        public $view_data;
        
        public function __construct () {
            parent::__construct();
        }
    
        public function index()
	{   
            //$data['main_menu'] = $this->main_menu;
            $this->load->view('v_admin');
	}
        
        public function import_menu(){
            $this->load->model('menus');
            $data['status_msg'] = $this->menus->load_csv();
            //fred ($data,"data");
            $this->load->view('v_status', $data);
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

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */