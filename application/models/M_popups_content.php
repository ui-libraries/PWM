<?php
class M_popups_content extends CI_model {
	
	//table fields as attributes
	public $id;
	public $popupname;
	public $title;
	public $subtitle;
	public $body;
	public $imageurl;
	public $buttontxt;
	public $buttonurl;

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }
    
    public function fetch_list($limit, $start) {
		$this->db->select('popupname')
					->from('patients')
					->join ('users', 'patients.user_id = users.id')
					->order_by('last_name, first_name, middle_name')
					->limit($limit, $start);
		$query = $this->db->get();					
        return ($query->num_rows() > 0) ? $query->result() : false;
    }

}