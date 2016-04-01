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

    public function fetch_list($limit=25, $start=0) {
        $this->db->select('stories.id, title, location, byline, county')
                    ->from('stories')
                    ->join ('counties', 'stories.f_county_id = counties.id', 'left');
                    
        if (!empty($this->searchval)) {
            $this->db->like('title', $this->searchval)
                    ->or_like ('byline', $this->searchval)
                    ->or_like ('location',$this->searchval)
                    ->or_like ('county',$this->searchval);
        }
        $this->db->limit($limit, $start);
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result() : false;
    }

//need two functions. One to load story for editing
//the other to load story into a page

    public function load_story($story_id=null){
        //for editing if $story_id is not null, otherwise blank
        if (!empty($story_id)){
            $query = $this->db->get_where('stories', array('id' => $story_id));
            if ($query->num_rows()>0) {
                $story = $query->row();
            }

        } else {
            //create a blank record and return it as an object
            $query = $this->db->insert('stories', array('status'=>'draft')); //does this insert a blank record?
            $story_id = $this->db->insert_id();
            $query = $this->db->get_where('stories', array('id' => $story_id));
            $story = $query->row();
        }
        return (!empty($story)) ? $story : false;
    }
    

    public function show_story(){
        //load story for the map
        //this is not yet developed
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
    public function get_story_id() {
        //$this-storyname = county/storyname
        if (!empty($this->story_name)) {
            
            $query = $this->db->select('id')
                ->get_where('stories', array('story_name'=>$this->story_name));
            $story_id = $query->row()->id;
        }
        return !empty($story_id) ? $story_id : false;
    }
}