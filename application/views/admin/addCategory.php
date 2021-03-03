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
                <form name="categoryForm" onsubmit="return categoryFormValidation()">
                <div class="row">
                    <div class="col-12 col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <h5 class="card-title text-lg"><u>Add Category</u></h5>
                                <hr>
                                <div class="row">
                                    <div class="col-12">
                                         <div class="form-group text-left">
                                            <label>Category Name</label>
                                            <input type="text" name="category" class="form-control">
                                            <span class="text-danger" id="categoryError"></span>
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
function categoryFormValidation(){
  var category = document.forms["categoryForm"]["category"].value;

  if(category == "")
  {
    document.getElementById('categoryError').innerHTML="Category is required";
    return false;
  }

  if(category != "")
  {
    document.getElementById('categoryError').innerHTML="";
  }

}
</script>

   <!-- jquery and script -->
 <?php
    $this->load->view('admin/adminFooter');
 ?>

<script>
  $(document).ready(function() {
           $("#category").addClass("active");
      });
  </script>
</body>

</html>