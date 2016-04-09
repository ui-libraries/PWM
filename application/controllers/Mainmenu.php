<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mainmenu extends CI_Controller {
	//this controller handles topmenu links that are internal to the site.
	
	public $view_data;
	
	public function __construct () {
		parent::__construct();
		$this->load->model('m_menus');
		$this->view_data['main_menu'] = $this->m_menus->build_menu(100);

	}

	public function getinvolved() {
		$this->load->view('v_getinvolved', $this->view_data);
	}
	public function nasa_carbon() {
		$this->load->view('nasa_co2_visualization', $this->view_data);
	}
	public function nasa_temp() {
		$this->load->view('nasa_1820_2011', $this->view_data);
	}
	public function gottschalk_book() {
		$this->load->view('gottschalk_book', $this->view_data);
	}

	public function about($tabindex=0) {
		//if tabindex is not passed in as a parameter, e.g. http://...about/2 then it will default to 0
		$this->view_data['tabindex'] = $tabindex;
		$this->load->view('v_about', $this->view_data);
	}
	public function links() {
		$this->load->view('v_links', $this->view_data);
	}


}
	
?>