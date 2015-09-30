<?php
class Markers extends CI_model {
	
	//table fields as attributes
	public $id;
	public $markername;
	public $layergroup;
	public $markertype;
	public $coords;
	public $iconname;
	public $clickable;
	public $draggable;
	public $keyboard;
	public $title;
	public $zindexoffset;
	public $opacity;
	public $riseonhover;
	public $riseoffset;
	public $location;

    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }
}