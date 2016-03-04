<?php
class M_icons extends CI_model {
	//table fields as attributes
	public $id;
	public $iconname;
	public $iconurl;
	public $iconsize_x;
	public $iconsize_y;
	public $iconanchor_x;
	public $iconanchor_y;
	public $popupanchor_x;
	public $popupanchor_y;
	public $description;

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }
	//
}