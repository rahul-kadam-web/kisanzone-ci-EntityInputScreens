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
                 <form name="productForm" onsubmit="return productFormValidation()">
                 <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title text-lg-center"><u>Add Product</u></h5>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-6">
                                         <div class="form-group">
                                            <label>Product Brand</label>
                                            <select name="brand" class="form-control">
                                                <option value="" selected="">select brand</option>
                                            </select>
                                            <span class="text-danger" id="brandError"></span>
                                          </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-6">
                                         <div class="form-group">
                                            <label>Product Category</label>
                                              <select name="category" class="form-control">
                                                <option value="" selected="">select category</option>
                                            </select>
                                            <span class="text-danger" id="categoryError"></span>
                                          </div>
                                    </div>
                                     <div class="col-12 col-md-6 col-lg-6">
                                         <div class="form-group">
                                            <label>Product Name</label>
                                            <input type="text" name="product" class="form-control">
                                            <span class="text-danger" id="productError"></span>
                                          </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-6">
                                         <div class="form-group">
                                            <label>Product Price</label>
                                            <input type="number" name="price" class="form-control">
                                            <span class="text-danger" id="priceError"></span>
                                          </div>
                                    </div>
                                     <div class="col-12 col-md-6 col-lg-6">
                                         <div class="form-group">
                                            <label>Product Quantity</label>
                                            <input type="number" name="quantity" class="form-control">
                                            <span class="text-danger" id="quantityError"></span>
                                          </div>
                                    </div>
                                     <div class="col-12 col-md-6 col-lg-6">
                                         <div class="form-group">
                                            <label>Product Image</label>
                                            <div class="row">
                                              <div class="col-10">
                                            <input type="file" id="file" onchange="return fileValidation()" name="image" class="form-control">
                                            <span class="text-danger" id="imageError"></span>
                                              </div>
                                              <div class="col-2 pt-2">
                                              <i class="fa fa-eye" data-toggle="modal" data-target="#imagePreviewModal" aria-hidden="true"></i>
                                              </div>
                                            </div>

                                            <!-- Image Preview Modal -->
                                            <div class="modal fade" id="imagePreviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                              <div class="modal-dialog modal-lg" role="document">
                                               <div class="modal-content">
                                                 <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Image Preview</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                     <span aria-hidden="true">&times;</span>
                                                    </button>
                                                  </div>
                                                 <div class="modal-body">
                                                   <!-- Image preview -->
                                                   <div id="imagePreview"></div>
                                                </div>
                                             </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>

                                    <div class="col-12">
                                         <div class="form-group">
                                            <label>Product Description</label>
                                            <textarea class="form-control" rows="4" name="desc"></textarea>
                                            <span class="text-danger" id="descError"></span>
                                          </div>
                                    </div>
                                </div>
                                    <button type="submit" class="card-link btn btn-info">Add</button>
                                    <button type="reset" class="btn btn-danger">Cancel</button>
                             </div>
                        </div>
                      
                    </div>
                </div>
          </form>
        </div>
    </div>

<script type="text/javascript">
//file validation
function fileValidation(){
    var fileInput = document.getElementById('file');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpeg|\.png)$/i;
    if(!allowedExtensions.exec(filePath)){
        document.getElementById("imageError").innerHTML="Please upload file having extensions .jpeg/.png only.";
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
              document.getElementById('imagePreview').setAttribute('width', '30px');
              document.getElementById('imagePreview').setAttribute('height', '30px');
              document.getElementById('imagePreview').innerHTML = '<img src="'+e.target.result+'"/>';
            };
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}

function productFormValidation() {
  //regular expressions
  var nameRegularE = /^[A-Z a-z]{2,20}$/;
  var amtRegularE = /^[0-9]{1}$/;

  //storing value in variables
  var brand = document.forms["productForm"]["brand"].value;
  var category = document.forms["productForm"]["category"].value;
  var product = document.forms["productForm"]["product"].value;
  var price = document.forms["productForm"]["price"].value;
  var quantity = document.forms["productForm"]["quantity"].value;
  var image = document.forms["productForm"]["image"].value;
  var desc = document.forms["productForm"]["desc"].value;

  //to count error
  var count=0;

  if(brand != "")
  {
    document.getElementById('brandError').innerHTML="";
  }

  if(category != "")
  {
    document.getElementById('categoryError').innerHTML="";
  }

  if(product != "")
  {
    document.getElementById('productError').innerHTML="";
  }

  if(price != "")
  {
    document.getElementById('priceError').innerHTML="";
  }

  if(quantity != "")
  {
    document.getElementById('quantityError').innerHTML="";
  }

  if(image != "")
  {
    document.getElementById('imageError').innerHTML="";
  }

  if(desc != "")
  {
    document.getElementById('descError').innerHTML="";
  }

  if(brand == ""){
    document.getElementById("brandError").innerHTML="Plz select brand";
    count++;
  }

  if(category == ""){
    document.getElementById("categoryError").innerHTML="Plz select category";
    count++;
  }

  if(!product.match(nameRegularE)){
    document.getElementById("productError").innerHTML="Plz enter a prodcut name";
    count++;
  }

  if(!price.match(amtRegularE)){
    document.getElementById("priceError").innerHTML="Plz enter amount";
    count++;
  }

  if(!quantity.match(amtRegularE)){
    document.getElementById("quantityError").innerHTML="Plz enter amount";
    count++;
  }

  if(image == ""){
    document.getElementById("imageError").innerHTML="Plz select image";
    count++;
  }

  if(desc == ""){
    document.getElementById("descError").innerHTML="Please enter description";
    count++;
  }

  if(count > 0){
    return false;
  }

}
</script>

   <!-- jquery and script -->
 <?php
    $this->load->view('admin/adminFooter');
 ?>

<script>
  $(document).ready(function() {
           $("#product").addClass("active");
      });
  </script>
</body>

</html>