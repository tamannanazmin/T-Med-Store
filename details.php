<!--adding function and database--> 
<?php

include("includes/db.php");
include("functions/functions.php");
?>
<!--fetching value from health_equipment and health_equipment_cat table--> 
 <?php


if(isset($_GET['pro_id'])){

    $product_id = $_GET['pro_id'];

    $get_product = "select * from health_equipment where health_equipment_id='$product_id'";

    $run_product = mysqli_query($con,$get_product);

    $row_product = mysqli_fetch_array($run_product);

    $p_cat_id = $row_product['health_equipment_cat_id'];

    $pro_title = $row_product['health_equipment_title'];

    $pro_price = $row_product['health_equipment_price'];

    $pro_desc = $row_product['health_equipment_desc'];

    $pro_img1 = $row_product['health_equipment_img'];

    $get_p_cat = "select * from health_equipment_cat where health_equipment_cat_id='$p_cat_id'";

    $run_p_cat = mysqli_query($con,$get_p_cat);

    $row_p_cat = mysqli_fetch_array($run_p_cat);

    $p_cat_title = $row_p_cat['health_equipment_cat_title'];

}

?>
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Medicine Shop</title>
    <link rel="stylesheet" href="css/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <!--starting page--> 
  <?php

    include("includes/Starting.php");

    ?>
<!-- showing title --> 
   <div id="content">
       <div class="container">
           <div class="col-md-12">

               <ul class="bread">
                   <li>
                       <a href="index.php">Home</a>
                   </li>
                   <li>
                      <a href="HealthEquipment.php">Health Equipment</a>
                   </li>

                   <li>
                       <a href="HealthEquipment.php?p_cat=<?php echo $p_cat_id; ?>"><?php echo $p_cat_title; ?></a>
                   </li>
                   <li> <?php echo $pro_title; ?> </li>
               </ul>

           </div>

<!--showing product details--> 

               <div id="productMain" class="row">
                   <div class="col-sm-6">
                       <div id="mainImage">
                          <div class="item active">
                                       <center><img class="img-responsive" src="admin_area/product_images/<?php echo $pro_img1; ?>" alt="Product 3-a"></center>
                                   </div>
                       </div>
                   </div>

                   <div class="col-sm-6">
                       <div class="box">
                           <h2 class="text-center"> <?php echo $pro_title; ?> </h2>

                            <?php
                            addCart();
                             ?>

                            <form action="details.php?add_cart=<?php echo $product_id; ?>" class="form-horizontal" method="post">
                                <div class="form-group">
                                    <label for="" class="col-md-5 control-label">Products Quantity</label>

                                    <div class="col-md-7">
                                           <select name="product_qty" id="" class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            </select>

                                     </div>
                                </div>
                                <p class="price">BDT <?php echo $pro_price; ?></p>
                                     <p class="text-center buttons"><button type="submit" name="add" button class="btn btn-primary i fa fa-shopping-cart"> Add to cart</button></p>

                                          </div>

                                    </div>
                                    
                               </div>


                               

                           </form>

                       </div>



                   </div>


               </div>

               <div class="box" id="details">

                       <h4>Product Details</h4>

                   <p>

                       <?php echo $pro_desc; ?>

                   </p>


               </div>
              


       </div>
   </div>
<!--adding footer--> 
   <?php

    include("includes/footer.php");

    ?>

    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>


</body>
</html>
