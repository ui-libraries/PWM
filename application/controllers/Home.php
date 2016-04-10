<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 *   http://example.com/index.php/home
	 * - or -
	 *   http://example.com/index.php/home/index
	 * - or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

	public $view_data;
	public $local_menu_id;

	public function __construct () {
		parent::__construct();
		$this->load->model('m_menus');
		$this->load->model('m_popups');
		$this->view_data['main_menu'] = $this->m_menus->build_menu(100);
	}

	public function index()
	{
		//$data['main_menu'] = $this->main_menu;
		$this->local_menu_id = 200;
		$this->view_data['local_menu_id'] = $this->local_menu_id;
		$this->view_data['local_menu'] = $this->m_menus->build_menu($this->local_menu_id);
		$this->load->view('v_home', $this->view_data);
	}

	public function view($view_name, $menu_id = null) {
		
		$this->local_menu_id = $this->m_menus->get_view_menu($view_name);
		
		$this->view_data['local_menu_id'] = $this->local_menu_id;
		$this->view_data['local_menu'] = $this->m_menus->build_menu($this->local_menu_id);
		
		//set the lat lng and zoom of the view
		$this->db->where('menu_id',$this->local_menu_id );
		$query=$this->db->get('menus_views');
		$menu_view =$query->row(); 
		$this->view_data['lat'] = $menu_view->view_center_lat;
		$this->view_data['lng'] = $menu_view->view_center_lng;
		$this->view_data['zoom'] = $menu_view->view_zoom;
		
		$query_popups = $this->m_popups->get_popups($view_name);
		$n=1;
		foreach ($query_popups->result() as $popup) {
			if($popup->iconurl !='none' && !empty ($popup->iconurl)) {
				$this->view_data["iconname"][$n]=$this->m_popups->build_icon($popup->icon_id);
			}

			$this->view_data["markername"][$n] = $this->m_popups->build_marker($popup->marker_id);
			$this->view_data["popupname"][$n] = $this->m_popups->build_popup($popup->popup_id);
			//$this->view_data["bindpopup"][$n] = $popup->markername.".bindPopup(".$popup->popupname.");";
			$this->view_data["bindpopup"][$n] = $this->m_popups->bind_popup($popup->view_id, $view_name);
			$n++;
		}
		$this->view_data['n']= $n;
		//$this->load->view($view_name, $this->view_data);		
		$this->load->view('v_county', $this->view_data);

	}

    public function story($caller,$story) {
        /* example http://peoplesweathermap.org/index.php/home/story/lyon/PeopleOnTheMove
           $caller = 'lyon', $story='PeopleOnTheMove'
        */

        //load story from mysql story table
        $this->load->model('m_stories');

        $qCounty = $this->db->select ('id')
        	->from ('counties')
        	->where ('county', $caller)
        	->get();
        	
        $county = $qCounty->row();
        $this->m_stories->f_county_id = $county->id;
        
        $this->m_stories->county = $caller;
//		$this->m_stories->story_name = $caller."/".$story;
		$this->m_stories->story_name = $story;

		//need storyid
		$story_id = $this->m_stories->get_story_id();
        $story=$this->m_stories->load_story($story_id);
		$story->story_content = str_replace("../../",base_url(),$story->story_content);
		//<img src="../../resources/image/lyon/PeopleOnTheMove/lyon-nhl-bloodrun.jpg"

//		$this->view_data['story'] = $this->m_stories->load_story($story_id);
		$this->view_data['story'] = $story;

        //$this->view_data['story_include'] = "stories/".$caller."/".$story.".php";

        $this->view_data['return'] =$caller;
        $this->load->view('v_story2',$this->view_data);
    }

	public function xstory($caller,$story) {
        /* example http://peoplesweathermap.org/index.php/home/story/lyon/PeopleOnTheMove
           $caller = 'lyon', $story='PeopleOnTheMove'
        */

		$this->view_data['story_include'] = "stories/".$caller."/".$story.".php";
		$this->view_data['return'] =$caller;
		$this->load->view('v_story',$this->view_data);
	}


	public function tester() {
		//loads view mapTester for testing functions before implementing on standard maps
		$this->view_data['local_menu']=""; //initialize so unset variable does not create a problem in the view
		$this->load->view('mapTester', $this->view_data);
	
	}
}

/* Location: ./application/controllers/welcome.php */