<?php

/**
 * Model Class Menus  includes functions to manage the menus table and related menu_items table
 *  import from csv
 *  build html menu div
 *
 * @author mneucoll
 */
class M_menus extends CI_model {	

        private $fieldmap = array(
        	'menus'=> array (
	        	'id'=>'id',
	        	'css_id'=>'css_id',
	        	'menu_desc'=>'menu_desc',
	        	'css_class'=>'css_class',
	        	'sort' => 'sort'
	        ),
	        'menus_views' => array (
				'id'=>'id' ,
				'menu_id'=>'menu_id',
				'view_name'=>'view_name',
				'view_center_lat'=>'view_center_lat',
				'view_center_lng'=>'view_center_lng',
				'view_zoom'=>'view_zoom'
			),
			'menu_items' => array (
				'id'=>'id',
				'menu_id' =>'menu_id',
				'child_of'=>'child_of',
				'sort'=>'sort',
				'menu_item_text'=>'menu_item_text',
				'menu_item_desc'=>'menu_item_desc',
				'url'=>'url',
				'target'=>'target',
				'css_class'=>'css_class'
			)
		);
	
    public function __construct() {
        // Call the Model constructor
        parent::__construct();
    }
        
    public function do_upload(){
        $config['upload_path']		= APPPATH.'import_data';
        $config['allowed_types']    = 'xlsx|xlsm';
        $config['max_size']         = 0;
		$config['file_name']			= 'menus.xlsx';
		$config['overwrite'] = TRUE;

        $this->load->library('upload', $config);
        

		return $this->upload->do_upload('userfile');
    }
    
    public function upload_excel() {
		$data['msg'] = '';
			if (!$this->do_upload()) {
				$data['errmsg'] = $this->upload->display_errors();
			} else {
				//proc the excel file
				$uploadedfilename = $GLOBALS['_FILES']['userfile']['name'];
				$filename = $this->upload->data('file_path').$this->upload->data('file_name');
				if (!empty($msg)){ //importXLS returned an error message
					$data['errmsg']= "Error in $uploadedfilename:<br /> $msg <br /> Upload incomplete";
					$data['msg']= '';
				} else { //empty msg so far, importXLS was successful
					$data['msg'] .= "$uploadedfilename: excel file loaded <br /> <br />";
					$data['msg'] .= $this->load_menus($filename);
 
					$data ['errmsg'] = '';
				}
				$msg = (!empty($data['errmsg'])) ? $data['errmsg'] : $data['msg'];
				$sql = "INSERT INTO `menus_import_log` ( `msg`) VALUES (".$this->db->escape($msg).")";
				$query=$this->db->query($sql);
			}

	    $this->load->view('v_menus_upload', $data);
	}
    

	public function load_menus($filename) {		
        $this->load->library('phpexcel/PHPExcel');
		$inputFileName = $filename;
		$inputFileType = PHPExcel_IOFactory::identify($inputFileName);
		$objReader = PHPExcel_IOFactory::createReader($inputFileType);
		$objPHPExcel = $objReader->load($inputFileName);
		$result = "";
		
		foreach ($objPHPExcel->getWorksheetIterator() as $worksheet) {
			$added = 0;
			unset($insertFields); 
			unset($insertData); 

            $worksheetTitle = $worksheet->getTitle();
            if (array_key_exists($worksheetTitle, $this->fieldmap)){
				$admindb = $this->load->database('admin', TRUE);
				$admindb->truncate($worksheetTitle);
				$result .= $worksheetTitle." table truncated.  ";
				$sheet = $objPHPExcel->setActiveSheetIndexByName($worksheetTitle);

				$firstblank = 0;
				$rowNum = 0;
				while(empty($firstblank)) {
					$cellVal = $sheet->getCellByColumnAndRow('A', $rowNum)->getValue();
					if (empty($cellVal)) {
						$firstblank = $rowNum;
					}
					$rowNum++;
				}
		        $highestRow = --$firstblank;        
		        $highestColumn = $sheet->getHighestColumn();
		
				$rangeArray = $sheet->rangeToArray('A1' . ':' . $highestColumn . '1', NULL, TRUE, FALSE);
				$columnNames = $rangeArray[0];
				
				foreach($columnNames as $key=>$columnName) {
					$fieldName = array_search($columnName,$this->fieldmap[$worksheetTitle]);
					if ($fieldName !==false){
						$insertFields[$key] =$fieldName; 
					}
				}
//fred ($insertFields, "insertFields");
				for ($row = 2; $row <= $highestRow; $row++){ 
	                //  Read a row of data into an array
	                $rangeArray = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, FALSE);
	                $rowData = $rangeArray[0];
	                //build activerecord insert/update array
	       
	                foreach ($rowData as $key=>$cellValue) {
		                if (key_exists($key, $insertFields)) {
			                $dbField = $insertFields[$key];
			                $insertData[$dbField]= ($cellValue=="NULL" ? null : $cellValue);
			            }
			        }
	                //insert/update array has been populated
	                //search for a mrn/surg_date match
		            $this->db->insert ($worksheetTitle,$insertData);
		            $added ++;
				}
			}
			$result .= "added ".$added." new records <br /><br />";
		}
		return ($result);
	}

    public function xload_csv() {
        $this->query->truncate('menus');
        $result = "menus tables truncated<br />";

        $sql = "COPY menus FROM '".FCPATH."resources/csv/menus.csv' DELIMITER ',' CSV HEADER";
        $query = $this->db->query($sql);
        $result .= $this->db->affected_rows()." record(s) loaded into menus table from menus.csv<br />";

        $sql = "COPY menu_items FROM '".FCPATH."resources/csv/menu_items.csv' DELIMITER ',' CSV HEADER";
        $query = $this->db->query($sql);
        $result .= $this->db->affected_rows()." record(s) loaded into menu_items table from menu_items.csv <br />";

        $sql = "TRUNCATE TABLE menus_views";
        $query = $this->db->query($sql);
        $sql = "COPY menus_views FROM '".FCPATH."resources/csv/menus_views.csv' DELIMITER ',' CSV HEADER";
        $query = $this->db->query($sql);
        $result .= $this->db->affected_rows()." record(s) loaded into menus_views table from menus_views.csv <br />";
        //fred ($result,"result");
        return $result;  
    }
    
    public function build_menu($menu_id) {
        $sql = "SELECT css_id, css_class FROM menus WHERE id = $menu_id";
        $query = $this->db->query($sql);
        
        $menustr = "<div id = '".$query->row()->css_id."' class = '".$query->row()->css_class."'>\n";
        $menustr .= "<ul id = 'level1_menu_".$menu_id."'>\n ";
        
//        $sql = "SELECT id, menu_id, menu_item_text, url, target, css_class
//                FROM menu_items
//                WHERE menu_id = $menu_id
//                    AND child_of IS NULL
//                ORDER BY sort ASC";
//		$level1 = $this->db->query($sql);

		$level1 = $this->db->select ('id, menu_id, menu_item_text, url, target, css_class')
			->from('menu_items')
			->where('menu_id',$menu_id)
			->where ('child_of', null)
			->order_by('sort')
			->get();

		$sql = $this->db->last_query();

        if ($level1->num_rows() > 0){
            foreach ($level1->result() as $level1_row){
                $menustr .= $this->build_menu_item($level1_row);


//                $sql = "SELECT id, menu_id, menu_item_text, url, target, css_class
//                        FROM menu_items
//                        WHERE menu_id = $menu_id
//                            AND child_of = ".$level1_row->id.
//                        " ORDER BY sort ASC" ;
//
//                $level2 = $this->db->query($sql);

				$level2 = $this->db->select('id, menu_id, menu_item_text, url, target, css_class')
					->from('menu_items')
					->where ('menu_id', $menu_id)
					->where ('child_of',$level1_row->id )
					->order_by ('sort')
					->get();
                
                if ($level2->num_rows() > 0){
                    $menustr .= "<ul id = 'level2_menu_".$level1_row->id."'>\n ";
                    foreach ($level2->result() as $level2_row){
                        $menustr .= $this->build_menu_item($level2_row);

//                        $sql = "SELECT id, menu_id, menu_item_text, url, target, css_class
//                                FROM menu_items
//                                WHERE menu_id = $menu_id
//                                    AND child_of = ".$level2_row->id.
//                                " ORDER BY sort ASC" ;
//                        $level3 = $this->db->query($sql);
						$level3 = $this->db->select ('id, menu_id, menu_item_text, url, target, css_class')
							->from('menu_items')
							->where ('menu_id',$menu_id)
							->where ('child_of', $level2_row->id)
							->order_by('sort')
							->get();

                        if ($level3->num_rows() > 0){
                            $menustr .= "<ul id = 'level3_menu_".$level2_row->id."'>\n ";
                            foreach ($level3->result() as $level3_row){
                                $menustr .= $this->build_menu_item($level3_row);            
                                $menustr.="</li>\n";
                            }
                            $menustr .= "</ul>\n";
                        }
                        $menustr.="</li>\n";
                    }
                    $menustr .= "</ul>";    
                }
                $menustr.="</li>\n";
            }           
            $menustr .= "</ul>\n";
        }
        $menustr .= "</div>\n";
        return $menustr;
    }

    public function build_menu_item($row) {

    	if (empty($row->url)){ 
    		$url = "#";
    		}
    	elseif (substr($row->url,0,10) == "[base_url]"){
    		$url = base_url(substr($row->url,11));
    		}
		else {
			$url=$row->url;
			}
        $menu_item = "<li ";
	    $menu_item .= "class = '";
        if($row->menu_id!=100){
			$menu_item .= !empty($row->css_class) ? "{$row->css_class}" : "ui-state-disabled";
        } else {
			$menu_item .= !empty($row->css_class) ? "{$row->css_class}" : "disabled";
		}
		$menu_item .= "'";
        $menu_item .= ">";
        $menu_item .= "<a href='".$url."' ";
        $menu_item .= !empty($row->css_class)? "class = '".$row->css_class."' " : '';
        $menu_item .= !empty($row->target)? "target = '".$row->target."' " : '';
        $menu_item .= ">".$row->menu_item_text."</a>\n";
        return $menu_item;
    }
    
	public function get_view_menu($view) {
		$sql="SELECT menu_id FROM menus_views WHERE view_name = '".$view."'";
		$query = $this->db->query($sql);
		$menu_id = $query->row()->menu_id;
		return !empty($menu_id)? $menu_id : 0;
	}
    
}

?>