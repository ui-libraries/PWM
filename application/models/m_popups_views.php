<?php
class M_popups_views extends CI_model {
	
	//table fields as attributes
	public $id;
	public $viewname;
	public $f_marker_id;
	public $markername;
	public $f_icon_id;
	public $iconname;
	public $f_popup_id;
	public $popupname;
	public $offset_x;
	public $offset_y;


	public $searchval;
	
    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }
    
    public function fetch_list($limit=25, $start=0) {
		$this->db->select('popups_views.id, markername, viewname, iconurl')
					->from('popups_views')
					->join ('popups_icons', 'popups_views.f_icon_id = popups_icons.id', 'left')
					->join ('popups_markers', 'popups_views.f_marker_id = popups_markers.id','left');
					
		if (!empty($this->searchval)) {
			$this->db->like('markername', $this->searchval)
					->or_like ('viewname',$this->searchval);
		}
		$this->db->limit($limit, $start);
		
		$query = $this->db->get();					
        return ($query->num_rows() > 0) ? $query->result() : false;
    }
    
}

?>