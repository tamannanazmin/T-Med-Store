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
    <link rel="stylesheet" href="css/contact.css">
</head>
<body>

   <?php
    $active='About Us';
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
                      About_us
                   </li>
               </ul>

           </div>
           <div class="col-md-1">
           </div>
           <div class="col-md-8">

              <div class="box">
                <div class = "box_header">
                  <?php
                  $conn = mysqli_connect("localhost","root","","170204048");
                  $query2 = "select * from about_us_images where ID = '1'";
                  $result = $conn-> query($query2);
                  $resultCheck = mysqli_num_rows($result);
                  if ($resultCheck > 0 ) {
                    while($row = mysqli_fetch_assoc($result)){
                      $display_image1=$row["location"];
                    }
                  }
                   ?>
                   <img src="<?php echo $display_image1; ?>" alt="T MED STORE" class="hidden-xs">
                   <?php
                   $conn = mysqli_connect("localhost","root","","170204048");
                   $query2 = "select * from about_us_images where ID = '2'";
                   $result = $conn-> query($query2);
                   $resultCheck = mysqli_num_rows($result);
                   if ($resultCheck > 0 ) {
                     while($row = mysqli_fetch_assoc($result)){
                       $display_image1=$row["location"];
                     }
                   }
                    ?>
                    <img src="<?php echo $display_image1; ?>" alt="T MED STORE" class="visible-xs">

                </div>
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
