<?php
    $page_title = 'Peoples Weather Map -- Admin';
    include ("includes/admin_head.incl");
?>
<body>
<?php
    include ("includes/page_head.incl");
?>

<div id="pwm_container">
    <div id="contentwrapper">
        <div class="innertube">
            <div class="container"> <!-- for bootstrap grid components -->
                <div class="row">
                    <div class="col-sm-11 col-sm-offset-1">
                        <h2>Admin Menu</h2>
                    </div>
                </div>
       
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <a href ="admin/import_menu" class="btn btn-default" style="width:100%;">Load Menu Excel Sheets</a>    
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <a href ="image_manager" class="btn btn-default" style="width:100%;">Manage Images</a>   
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <a href ="popups/search_popup" class="btn btn-default" style="width:100%;">Manage Popups</a>    
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <a href ="stories/search_story" class="btn btn-default" style="width:100%;">Manage Stories</a>   
                    </div>
                </div>
                <div class="row">
                    <hr />
                </div>


                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <a href ="home" class="btn btn-default" style="width:100%;">Go to map</a>   
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>


<!--
Previous method of loading popups
<li><a href ="admin/import_popups">Load Popups CSV files</a><br />
    <i>files to be loaded, must be located in <?php echo FCPATH."resources/csv/"; ?></i>
</li>
-->


<?php include('includes/page_foot.incl');


