<?php

include("includes/db.php") 
 ?>


<!DOCTYPE html>
<html lang="em">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>insert product</title>
	<link rel="stylesheet" href="css/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
</head>
<body>
	<div class="row">
    
    <div class="col-lg-12">
        
        <ol class="breadcrumb">
            
            <li class="active">
                
                <i class="fa fa-dashboard"></i> Dashboard / Insert Products
                
            </li>
            
        </ol>
        
    </div>
    
</div>
       
<div class="row">
    
    <div class="col-lg-12">
        
        <div class="panel panel-default">
            
           <div class="panel-heading">
               
               <h3 class="panel-title">
                   
                   <i class="fa fa-money fa-fw"></i> Insert Product 
                   
               </h3>
               
           </div> 
           
           <div class="panel-body">
               
               <form method="post" class="form-horizontal" enctype="multipart/form-data">
                   
                   <div class="form-group">
                       
                      <label class="col-md-3 control-label"> Product Title </label> 
                      
                      <div class="col-md-6">
                          
                          <input name="product_title" type="text" class="form-control" required>
                          
                      </div>
                       
                   </div>
                   
                   <div class="form-group">
                       
                      <label class="col-md-3 control-label"> Product Category </label> 
                      
                      <div class="col-md-6">
                          
                          <select name="product_cat" class="form-control">
                              
                              <option> Select a Category  </option>
                              
                              <?php 
                              
                              $get_health_equipment_cat = "select * from health_equipment_cat";
                              $run_health_equipment_cat = mysqli_query($con,$get_health_equipment_cat);
                              
                              while ($row_health_equipment_cat=mysqli_fetch_array($run_health_equipment_cat)){
                                  
                                  $health_equipment_cat_id = $row_health_equipment_cat['health_equipment_cat_id'];
                                  $health_equipment_cat_title = $row_health_equipment_cat['health_equipment_cat_title'];
                                  
                                  echo "
                                  
                                  <option value='$health_equipment_cat_id'> $health_equipment_cat_title </option>
                                  
                                  ";
                                  
                              }
                              
                              ?>

                               
                              
                          </select>
                          
                      </div>
                       
                   </div>
                   
                   
                   <div class="form-group">
                       
                      <label class="col-md-3 control-label"> Product Image</label> 
                      
                      <div class="col-md-6">
                          
                          <input name="product_img1" type="file" class="form-control" required>
                          
                      </div>
                       
                   </div>
                     
                   <div class="form-group">
                       
                      <label class="col-md-3 control-label"> Product Price </label> 
                      
                      <div class="col-md-6">
                          
                          <input name="product_price" type="text" class="form-control" required>
                          
                      </div>
                       
                   </div>
                   
                   <div class="form-group">
                       
                      <label class="col-md-3 control-label"> Product Keywords </label> 
                      
                      <div class="col-md-6">
                          
                          <input name="product_keywords" type="text" class="form-control" required>
                          
                      </div>
                       
                   </div>
                   
                   <div class="form-group">
                       
                      <label class="col-md-3 control-label"> Product Desc </label> 
                      
                      <div class="col-md-6">
                          
                          <textarea name="product_desc" cols="19" rows="6" class="form-control"></textarea>
                          
                      </div>
                       
                   </div>
                   
                   <div class="form-group">
                       
                      <label class="col-md-3 control-label"></label> 
                      
                      <div class="col-md-6">
                          
                          <input name="submit" value="Insert Product" type="submit" class="btn btn-primary form-control">
                          
                      </div>
                       
                   </div>
                   
               </form>
               
           </div>
            
        </div>
        
    </div>
    
</div>
        
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script> 
   

</body>
</html>
<?php 
if(isset($_POST['submit'])){
	$product_title = $_POST['product_title'];
	$product_cat = $_POST['product_cat'];
	$product_price = $_POST['product_price'];
	$product_keywords = $_POST['product_keywords'];
	$product_desc = $_POST['product_desc'];
	

	$product_img1=$_FILES['product_img1']['name'];
	$temp_name1=$_FILES['product_img1']['tmp_name'];
	move_uploaded_file($temp_name1,"product_images/$product_img1");


	$insert_product="insert into health_equipment(health_equipment_cat_id,date,	health_equipment_title,health_equipment_img,health_equipment_price,health_equipment_keywords,health_equipment_desc)
	values('$product_cat',NOW(),'$product_title','$product_img1','$product_price','$product_keywords','$product_desc')";

	$run_product=mysqli_query($con,$insert_product);
	if($run_product){
		echo "<script>alert('Product has been inserted sucessfully')</script>";
		echo "<script>window.open('insert_product.php','_self')</script>";
	}

 }
?>
