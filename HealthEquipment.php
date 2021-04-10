<!--adding funtion and database--> 
<?php

include("includes/db.php");
include("functions/functions.php");
 ?>
<!--fetching value from health_equipment and health_equipment_cat table -->
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

    $p_cat_title = $row_p_cat['health_equipment_title'];

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
<!--adding starting page -->
 <?php
    $active='HEALTH EQUIPMENTS';
    include("includes/Starting.php");

    ?>

   <div id="content">
       <div class="container">
           <div class="col-md-12">

               <ul class="bread">
                   <li>
                       <a href="index.php">Home</a>
                   </li>
                   <li>
                       Health Equipments
                   </li>
               </ul>

           </div>

           <div class="col-md-3">


<!--showing sidebar of options-->

   <div class="panel panel-default sidebar-menu">
    <div class="panel-heading">
        <h3 class="panel-title">First Aid</h3>
    </div>

    <div class="panel-body">
        <ul class="nav nav-pills nav-stacked category-menu">

            <?php
           getPCats1();
            ?>


        </ul>
    </div>

</div>


<div class="panel panel-default sidebar-menu">
    <div class="panel-heading">
        <h3 class="panel-title">Meeters/Monitors</h3>
    </div>
    <div class="panel-body">
        <ul class="nav nav-pills nav-stacked category-menu">

             <?php
           getPCats2();
            ?>

        </ul>
    </div>

</div>

<div class="panel panel-default sidebar-menu">
    <div class="panel-heading">
        <h3 class="panel-title">Others</h3>
    </div>

    <div class="panel-body">
        <ul class="nav nav-pills nav-stacked category-menu">
            <?php
           getPCats3();
            ?>

        </ul>
    </div>

</div>
<!--showing title of every page-->
           </div>

           <div class="col-md-9">
               <?php

                if(!isset($_GET['p_cat1'])){

                    if(!isset($_GET['p_cat2'])){

                         if(!isset($_GET['p_cat3'])){

                              echo "

                                  <div class='box'><!-- box Begin -->
                                      <h1>Health Equipments</h1>
                                          <p>
                                              We offer a full array of medical equipment to improve your quality of life and health at home. Whatever equipment or support you need, we will promptly deliver it ,including expert instructions, set-up and other services.
                                         </p>
                                   </div><!-- box Finish -->

                                 ";

                    }

                   }

                  }

               ?>
<!--showing products-->
               <div class="row">
                              <?php

                        if(!isset($_GET['p_cat1'])){

                         if(!isset($_GET['p_cat2'])){

                          if(!isset($_GET['p_cat3'])){

                            $per_page=6;

                            if(isset($_GET['page'])){

                                $page = $_GET['page'];

                            }else{

                                $page=1;

                            }

                            $start_from = ($page-1) * $per_page;

                            $get_products = "select * from health_equipment order by 1 DESC LIMIT $start_from,$per_page";

                            $run_products = mysqli_query($con,$get_products);

                            while($row_products=mysqli_fetch_array($run_products)){

                                $pro_id = $row_products['health_equipment_id'];

                                $pro_title = $row_products['health_equipment_title'];

                                $pro_price = $row_products['health_equipment_price'];

                                $pro_img1 = $row_products['health_equipment_img'];

                                echo "

                                    <div class='col-md-4 col-sm-6 center-responsive'>

                                        <div class='product'>

                                            <a href='details.php?pro_id=$pro_id'>

                                                <img class='img-responsive' src='admin_area/product_images/$pro_img1'>

                                            </a>

                                            <div class='text'>

                                                <h3>

                                                    <a href='details.php?pro_id=$pro_id'> $pro_title </a>

                                                </h3>

                                                <p class='price'>

                                                    BDT $pro_price

                                                </p>

                                                <p class='buttons'>

                                                    <a class='btn btn-default' href='details.php?pro_id=$pro_id'>

                                                        View Details

                                                    </a>

                                                    <a class='btn btn-primary' href='details.php?pro_id=$pro_id'>

                                                        <i class='fa fa-shopping-cart'></i> Add To Cart

                                                    </a>

                                                </p>

                                            </div>

                                        </div>

                                    </div>

                                ";

                        }

                   ?>

               </div>
      <!-- showing page numbers-->
               <center>
                   <ul class="pagination">
                       <?php

                    $query = "select * from health_equipment";



                    $result = mysqli_query($con,$query);

                    $total_records = mysqli_num_rows($result);

                    $total_pages = ceil($total_records / $per_page);

                        echo "

                            <li>

                                <a href='HealthEquipment.php?page=1'> ".'First Page'." </a>

                            </li>

                        ";

                        for($i=1; $i<=$total_pages; $i++){

                              echo "

                            <li>

                                <a href='HealthEquipment.php?page=".$i."'> ".$i." </a>

                            </li>

                        ";

                        };

                        echo "

                            <li>

                                <a href='HealthEquipment.php?page=$total_pages'> ".'Last Page'." </a>

                            </li>

                        ";

                }

            }
          }

           ?>
           <!--side bar option products-->

                   </ul>
               </center>

                 <?php
                  getpcatpro1();

                 ?>
                 <?php
                  getpcatpro2();

                 ?>
                 <?php
                  getpcatpro3();

                 ?>





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
