<?php
class Popups_content extends CI_model {
	
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
}