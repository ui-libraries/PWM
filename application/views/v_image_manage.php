<?php
	$page_title = 'Peoples Weather Map -- Manage Images';
	include ("includes/admin_head.incl");
?>
<body>
<?php
	include ("includes/page_head.incl");
?>	
<div id="mainContent" class="nobuttons">
    <h3>Manage Images</h3>
    <table class="patview">
        <tr>
            <td colspan="7">
                <?php
                echo!empty($msg) ? "<h4>$msg</h4>" : "";
                //echo !empty($lastQuery) ? "$lastQuery<br />" : "";
                echo ("Find Image: ");
                echo form_open('image_manager', array('class' => 'inlineForm'));
                echo form_input('searchVal', (!empty($searchVal) ? $searchVal : ""));
                echo "&nbsp;";
                echo form_submit('search', 'Search');
                echo "&nbsp;&nbsp;&nbsp;";
                echo form_submit('addnew', 'Add New Image');
                echo "&nbsp;&nbsp;&nbsp;";
                echo form_submit('admin', 'Admin Menu');
                echo form_close();
                ?>
            </td>
        </tr>

        <?php if (!empty($links)) : ?>
            <tr><td colspan="100"><hr /></td></tr>
            <tr><td colspan="100"><?php echo $links; ?></td></tr>
        <?php endif; ?>                        

        <?php if (!empty($images)) : ?>
            <tr><td colspan="100"><hr /></td></tr>
            <tr>
                <th class="alignleft">Thumbnail</th>
                <th class="alignleft">Image Name</th>
                <th class="alignleft">Image Size</th>
                <th class="alignleft">&nbsp;</th>
            </tr>
        <?php endif; ?>


        <?php 
        if(!empty($images)):
	        foreach ($images as $image): 
	        	?>
	            <tr><td colspan="100"><hr /></td></tr>
	            <tr>
	                <td><?php echo $image['thumb']; ?><br /></td>
	                <td><?php echo $image['image_name']; ?><br /></td>
	                <td><?php echo $image['image_size']; ?></td>
	                <td>
	                 	<?php
	                    //delete button 
	                    //only include if administrator
// 	                    if ($this->session->userdata("group_id") > 5) {
	                        echo form_open('image_manager/delete_image', array('class' => 'inlineForm'));
	                        echo form_hidden('imageID', $image['id']);
	                        if (!empty($searchVal)) {
	                            echo form_hidden('searchVal', $searchVal);
	                        }
	                        echo form_submit(array('name'=>'delete', 'value'=>'Delete', 'style'=>'width:50px'));
	                        echo form_close();
// 	                    }
	                    ?>
	                </td>
	            </tr>            
	            
	        <?php 
	        endforeach; 
	    endif;
	    ?>
    </table>


</div> <!-- main -->
</body>
</html>
