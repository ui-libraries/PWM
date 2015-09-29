<?php

/**
 * Model Class Menus  includes functions to manage the menus table and related menu_items table
 *  import from csv
 *  build html menu div
 *
 * @author mneucoll
 */
class M_menus extends CI_model {
	private $config;
	
    public function __construct() {
        // Call the Model constructor
        parent::__construct();
    }
    
    private function set_upload_config() {
	    $this->config['upload_path'] = FCPath."/import_data";
	    $this->config['allowed_types']='xls|xlsx';
	    //default 
	    $this->config['filename'='menus.xlsx'];
    }
    
    public function upload_excel() {
	    $this->set_upload_config();
	    $this->load-=>view('v_menus_upload');


		$data['msg'] = '';
		if ($this->input->post('return')) {
			redirect('mainmenu');
		} elseif ($this->input->post('upload')) {
			if (!$this->do_upload()) {
				$data['errmsg'] = $this->upload->display_errors();
			} else {
				//proc the excel file
				$uploadedfilename = $GLOBALS['_FILES']['userfile']['name'];
				$filename = $this->config['upload_path'] . $this->$config['file_name'];

				$msg = $this->importXLS($filename);
				
				if (!empty($msg)){ //importXLS returned an error message
					$data['errmsg']= "Error in $uploadedfilename:<br /> $msg <br /> Upload incomplete";
					$data['msg']= '';
				} else { //empty msg so far, importXLS was successful
					$data['msg'] .= "$uploadedfilename: excel file loaded <br />";
					$data['msg'] .= $this->processed; 
					$data ['errmsg'] = '';
				}
				
				$msg = (!empty($data['errmsg'])) ? $data['errmsg'] : $data['msg'];
				$sql = "INSERT INTO `menus_import_log` ( `msg`) VALUES (".$this->db->escape($msg).")";
				$query=$this->db->query($sql);
			}

		} elseif ( $this->input->post('review')) {
			$redirect_to = 'surginet/show_menus_import_log';
			redirect($redirect_to);

		} elseif ($this->input->post('logout')) {
			redirect('mainmenu/logout');

		}
		$this->load->view(static::$uploadView, $data);
	}

    
    
    }
    
    public function load_csv() {
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
        
        $sql = "SELECT id, menu_id, menu_item_text, url, target, css_class 
                FROM menu_items 
                WHERE menu_id = $menu_id 
                    AND child_of IS NULL 
                ORDER BY sort ASC";
        $level1 = $this->db->query($sql);
        if ($level1->num_rows() > 0){
            foreach ($level1->result() as $level1_row){
                $menustr .= $this->build_menu_item($level1_row);
                
                $sql = "SELECT id, menu_id, menu_item_text, url, target, css_class 
                        FROM menu_items 
                        WHERE menu_id = $menu_id
                            AND child_of = ".$level1_row->id.
                        "ORDER BY sort ASC" ;
                $level2 = $this->db->query($sql);
                
                if ($level2->num_rows() > 0){
                    $menustr .= "<ul id = 'level2_menu_".$level1_row->id."'>\n ";
                    foreach ($level2->result() as $level2_row){
                        $menustr .= $this->build_menu_item($level2_row);
                        $sql = "SELECT id, menu_id, menu_item_text, url, target, css_class 
                                FROM menu_items 
                                WHERE menu_id = $menu_id
                                    AND child_of = ".$level2_row->id.
                                "ORDER BY sort ASC" ;
                        $level3 = $this->db->query($sql);
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
	    $menu_item .= "class = ";
        if($row->menu_id!=100){
			$menu_item .= !empty($row->css_class) ? "{$row->css_class}" : "ui-state-disabled";
        } else {
			$menu_item .= !empty($row->css_class) ? "{$row->css_class}" : "disabled";
		}
		
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

	public function process_excel($filename=NULL) {
		//optional parameter $filename defaults to config filename
		if (empty($filename)) {
			$filename = static::$config['file_name'];
		}
		$this->dbAdmin = $this->load->database('admin', true);
		$this->dbAdmin->truncate('menus');
		$msg='';

		$this->load->library('phpexcel/PHPExcel');
		$inputFileName = $filename;
		$inputFileType = PHPExcel_IOFactory::identify($inputFileName);
		$objReader = PHPExcel_IOFactory::createReader($inputFileType);
		$objPHPExcel = $objReader->load($inputFileName);
		
		$sheet = $objPHPExcel->getSheet(0);
        
        //there is some text after the data
		//find the first row with a blank cell in column A 
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
			$fieldName = array_search($columnName,$this->fieldsMap);
			if ($fieldName !==false){
				$insertFields[$key] =$fieldName; 
			} else {
				$ignoreFields[$key] = $columnName;
			}
		}
		//test for required fields
		$hasRequiredFields = true;
		foreach ($this->requiredFields as $requiredField) {
			if (!in_array($requiredField, $insertFields)) {
				$hasRequiredFields = false;
				$msg .= "Missing required field ".$this->fieldsMap[$requiredField]."<br />";
			}
		}

		if ($hasRequiredFields) {
			$recordsAdded = 0;
			$recordsUpdated=0;
//fred($highestRow, "highestRow");
	        for ($row = 2; $row <= $highestRow; $row++){ 
                //  Read a row of data into an array
                $rangeArray = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, FALSE);
                $rowData = $rangeArray[0];
                //build activerecord insert/update array     
                foreach ($rowData as $key=>$cellValue) {
	                if (key_exists($key, $insertFields)) {
		                $dbField = $insertFields[$key];
		                $dbFieldType = static::$dbFieldTypes[$dbField];
		                //to generify, might want to test for other things such as datetime 
		            	if ($dbFieldType =='date'){
			            	$unixDate =PHPExcel_Shared_Date::ExcelToPHP($cellValue);
			            	$insertValue = date("Y-m-d",$unixDate);
							$insertData[$insertFields[$key]] = $insertValue;
							if ($dbField == 'surg_date') {
								$surg_date = $insertValue;
							}
		            	} else if ($dbField == 'mrn') {
			            	//strip off TEC_from incoming mrn
			            	$mrn = strval(0+SUBSTR($cellValue,5)) ; 
							$insertData[$insertFields[$key]] = $mrn;			            	
		            	} else {
							$insertData[$insertFields[$key]] = $cellValue;
						}
	                }
                
                }                
                //insert/update array has been populated
                //search for a mrn/surg_date match
                $query=$this->db->get_where('surginet', array('mrn'=>$mrn,'surg_date'=>$surg_date));
                $foundRec = $query->row();
                if (empty($foundRec)){
	                $this->db->insert ('surginet',$insertData);
					$recordsAdded++;
                } else {
	                $this->db->where('id', $foundRec->id);
					$this->db->update('surginet', $insertData);
					$recordsUpdated++;
                }
//fred($this->db->last_query(), "add-update");

//fred ($insertData, "insertData");
        	}
		}
	if (!(empty($recordsAdded)&&empty($recordsUpdated))) {
		$this->processed = "Added $recordsAdded rows, updated $recordsUpdated rows in the  ".static::$tableName." table. <br />" ;
	} else {
		$this->processed = "No records added to the  ".static::$tableName." table. <br />" ;
	}



	function importXLS($filename=NULL) {
		//optional parameter $filename defaults to config filename
		if (empty($filename)) {
			$filename = static::$config['file_name'];
		}
/*
		$this->dbAdmin = $this->load->database('admin', true);
		$this->dbAdmin->truncate('surginet');
		$msg='';
*/

		$this->load->library('phpexcel/PHPExcel');
		$inputFileName = $filename;
		$inputFileType = PHPExcel_IOFactory::identify($inputFileName);
		$objReader = PHPExcel_IOFactory::createReader($inputFileType);
		$objPHPExcel = $objReader->load($inputFileName);
		
		$sheet = $objPHPExcel->getSheet(0);
        
        //there is some text after the data
		//find the first row with a blank cell in column A 
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
			$fieldName = array_search($columnName,$this->fieldsMap);
			if ($fieldName !==false){
				$insertFields[$key] =$fieldName; 
			} else {
				$ignoreFields[$key] = $columnName;
			}
		}
		//test for required fields
		$hasRequiredFields = true;
		foreach ($this->requiredFields as $requiredField) {
			if (!in_array($requiredField, $insertFields)) {
				$hasRequiredFields = false;
				$msg .= "Missing required field ".$this->fieldsMap[$requiredField]."<br />";
			}
		}

		if ($hasRequiredFields) {
			$recordsAdded = 0;
			$recordsUpdated=0;
//fred($highestRow, "highestRow");
	        for ($row = 2; $row <= $highestRow; $row++){ 
                //  Read a row of data into an array
                $rangeArray = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, FALSE);
                $rowData = $rangeArray[0];
                //build activerecord insert/update array     
                foreach ($rowData as $key=>$cellValue) {
	                if (key_exists($key, $insertFields)) {
		                $dbField = $insertFields[$key];
		                $dbFieldType = static::$dbFieldTypes[$dbField];
		                //to generify, might want to test for other things such as datetime 
		            	if ($dbFieldType =='date'){
			            	$unixDate =PHPExcel_Shared_Date::ExcelToPHP($cellValue);
			            	$insertValue = date("Y-m-d",$unixDate);
							$insertData[$insertFields[$key]] = $insertValue;
							if ($dbField == 'surg_date') {
								$surg_date = $insertValue;
							}
		            	} else if ($dbField == 'mrn') {
			            	//strip off TEC_from incoming mrn
			            	$mrn = strval(0+SUBSTR($cellValue,5)) ; 
							$insertData[$insertFields[$key]] = $mrn;			            	
		            	} else {
							$insertData[$insertFields[$key]] = $cellValue;
						}
	                }
                
                }                
                //insert/update array has been populated
                //search for a mrn/surg_date match
                $query=$this->db->get_where('surginet', array('mrn'=>$mrn,'surg_date'=>$surg_date));
                $foundRec = $query->row();
                if (empty($foundRec)){
	                $this->db->insert ('surginet',$insertData);
					$recordsAdded++;
                } else {
	                $this->db->where('id', $foundRec->id);
					$this->db->update('surginet', $insertData);
					$recordsUpdated++;
                }
//fred($this->db->last_query(), "add-update");

//fred ($insertData, "insertData");
        	}
		}
	if (!(empty($recordsAdded)&&empty($recordsUpdated))) {
		$this->processed = "Added $recordsAdded rows, updated $recordsUpdated rows in the  ".static::$tableName." table. <br />" ;
	} else {
		$this->processed = "No records added to the  ".static::$tableName." table. <br />" ;
	}
    
}

?>