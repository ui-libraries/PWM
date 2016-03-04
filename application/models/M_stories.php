<?php
/**
 * Model Class M_stories includes functions to manage the stories table
 * and to load story data for story view
 *  build html menu div
 *
 * @author mneucoll
 */
class M_stories extends CI_model
{
    static $tblname = 'stories';

    //table fields as attributes
    public $id;
    public $f_county_id;
    public $story_name;     //passed in from home->story
    public $title;
    public $location;
    public $byline;
    public $story_content;
    public $status;

    public $county;         //passed in from home->story

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }

    public function load_story(){
        $query = $this->db->select('id')
            ->from('counties')
            ->where('county',$this->county)
            ->get();
        $this->f_county_id = $query->row()->id;

        $this->db->where('f_county_id',$this->f_county_id)
            ->where('story_name', $this->story_name);
        $sql = $this->db->get_compiled_select(static::$tblname, FALSE);
        $query = $this->db->get();

        if ($query->num_rows()>0){
            $story = $query->row();
            return $story;
        } else {
            return false;
        }
    }
}