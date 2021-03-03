<!DOCTYPE html>
<html>

<!-- head -->
<?php 
    $this->load->view('admin/adminHead'); 
?>
<body>

    <div class="wrapper">
        <!--left Sidebar  -->
      <?php
        $this->load->view('admin/adminLeftSidebar');
      ?>
      <!-- end of left Sidebar -->
        <!-- Page Content  -->
        <div id="content">

           <!-- admin top navbar -->
            <?php
                $this->load->view('admin/adminTopNav');
            ?>
               <form name="brandForm" onsubmit="return brandFormValidation()">
                <div class="row">
                    <div class="col-12 col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <h5 class="card-title text-lg"><u>Add Brand</u></h5>
                                <hr>
                                <div class="row">
                                    <div class="col-12">
                                         <div class="form-group text-left">
                                            <label>Brand Name</label>
                                            <input type="text" name="brand" class="form-control">
                                            <span class="text-danger" id="brandError"></span>
                                          </div>
                                    </div>
                                </div>
                                    <button type="submit" class="card-link btn btn-info pr-4 pl-4">Add</button>
                                    <button type="reset" class="card-link btn btn-danger">Reset</button>
                             </div>
                        </div>
                      
                    </div>
                </div>
                </form>
        </div>
    </div>

<script type="text/javascript">

function brandFormValidation(){
  var brand = document.forms["brandForm"]["brand"].value;

  if(brand == "")
  {
    document.getElementById('brandError').innerHTML="Brand is required";
    return false;
  }

  if(brand != "")
  {
    document.getElementById('brandError').innerHTML="";
  }

}
</script>

   <!-- jquery and script -->
 <?php
    $this->load->view('admin/adminFooter');
 ?>
 
<script>
  
$(document).ready(function() {
         $("#brand").addClass("active");
    });
</script>
</body>

</html>