<?php

include("includes/db.php");
include("functions/functions.php");
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>T Med Store</title>
    <link rel="stylesheet" href="css/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

 <?php
    $active='MEDICINES';
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
                       <a href="medicines.php">Medicines</a>
                   </li>

               </ul>

           </div>

           <div class="col-md-3">


   <?php
    include("includes/side.php");
    ?>


           </div>

           <div class="col-md-9">
               <div class="box">
                   <h1>Medicines</h1>
                   <p>
                       We offer a full array of medicines to improve your quality of life and health at home.
                   </p>
               </div>



               <div class="row">
                   <div class="col-md-4 col-sm-6 center-responsive">

                       <div class="product">

                   <a href="#">

                       <img class="img-responsive" src="admin_area/product_images/methicol.jpg" alt="medicine">

                   </a>

                   <div class="text">

                       <h3>
                           <a href="#">
                             Methicol
                           </a>
                       </h3>

                       <p class="price">BDT 150</p>

                       <p class="button">

                           <a href="#" class="btn btn-default">View Details</a>



                       </p>

                   </div>

               </div>

                   </div>
                   <div class="col-md-4 col-sm-6 center-responsive">

                       <div class="product">

                   <a href="#">

                       <img class="img-responsive" src="admin_area/product_images/max.jpg" alt="medicines">

                   </a>

                   <div class="text">

                       <h3>
                           <a href="#">

                            Jointec Max

                           </a>
                       </h3>

                       <p class="price">BDT 150</p>

                       <p class="button">

                           <a href="#" class="btn btn-default">View Details</a>



                       </p>

                   </div>

               </div>

                   </div>
                   <div class="col-md-4 col-sm-6 center-responsive">

                       <div class="product">

                   <a href="#">

                       <img class="img-responsive" src="admin_area/product_images/savlon.jpg" alt="bandaid3">

                   </a>

                   <div class="text">

                       <h3>
                           <a href="#">
                              Savlon
                           </a>
                       </h3>

                       <p class="price">BDT 250</p>

                       <p class="button">

                           <a href="#" class="btn btn-default">View Details</a>



                       </p>

                   </div>

               </div>

                   </div>
                   <div class="col-md-4 col-sm-6 center-responsive">

                       <div class="product">

                   <a href="#">

                       <img class="img-responsive" src="admin_area/product_images/fla.jpg" alt="bandaid4">

                   </a>

                   <div class="text">

                       <h3>
                           <a href="#">

                            Flatameal-DS

                           </a>
                       </h3>

                       <p class="price">BDT 150</p>

                       <p class="button">

                           <a href="#" class="btn btn-default">View Details</a>


                       </p>

                   </div>

               </div>

                   </div>
                   <div class="col-md-4 col-sm-6 center-responsive">

                       <div class="product">

                   <a href="#">

                       <img class="img-responsive" src="admin_area/product_images/mar.jpg" alt="bandaid5">

                   </a>

                   <div class="text">

                       <h3>
                           <a href="#">
                              Marlox plus

                           </a>
                       </h3>

                       <p class="price">BDT 184</p>

                       <p class="button">

                           <a href="#" class="btn btn-default">View Details</a>

                       </p>

                   </div>

               </div>

                   </div>
                   <div class="col-md-4 col-sm-6 center-responsive">

                       <div class="product">

                   <a href="#">

                       <img class="img-responsive" src="admin_area/product_images/al.jpg" alt="bandaid6">

                   </a>

                   <div class="text">

                       <h3>
                           <a href="#">
                              Algicid

                           </a>
                       </h3>

                       <p class="price">BDT 140</p>

                       <p class="button">

                           <a href="#" class="btn btn-default">View Details</a>



                       </p>

                   </div>

               </div>

                   </div>
               </div>

               <center>
                   <ul class="pagination">
                       <li><a href="#">First Page</a></li>
                       <li><a href="#">1</a></li>
                       <li><a href="#">2</a></li>
                       <li><a href="#">3</a></li>
                       <li><a href="#">4</a></li>
                       <li><a href="#">5</a></li>
                       <li><a href="#">Last Page</a></li>
                   </ul>
               </center>

           </div>

       </div>
   </div>

   <?php

    include("includes/footer.php");

    ?>
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>


</body>
</html>
