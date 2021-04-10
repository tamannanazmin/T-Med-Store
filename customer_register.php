<?php

include("includes/db.php");
include("functions/functions.php");
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>M-Dev Store</title>
    <link rel="stylesheet" href="css/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

   <?php

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
                      Register
                   </li>
               </ul>

           </div>

           <div class="col-md-3">



           </div>

           <div class="col-md-9">

               <div class="box">

                   <div class="box-header">
                       <center>
                           <h2> Register a new account </h2>

                       </center>

                       <form action="server.php" method="post" enctype="multipart/form-data">

                           <div class="form-group">

                               <label>Your Name</label>

                               <input type="text" class="form-control" name="c_name" required>

                           </div>

                           <div class="form-group">

                               <label>Your Email</label>

                               <input type="text" class="form-control" name="c_email" required>

                           </div>

                           <div class="form-group">

                               <label>Your Country</label>

                               <input type="text" class="form-control" name="c_country" required>

                           </div>

                           <div class="form-group">

                               <label>Your City</label>

                               <input type="text" class="form-control" name="c_city" required>

                           </div>

                           <div class="form-group">

                               <label>Phone</label>

                               <input type="text" class="form-control" name="c_contact" required>

                           </div>

                           <div class="form-group">

                               <label>Your Address</label>

                               <input type="text" class="form-control" name="c_address" required>

                           </div>

                           <div class="form-group">

                               <label>Username</label>

                               <input type="text" class="form-control" name="c_username" required>

                           </div>


                           <div class="form-group">

                               <label>Your Password</label>

                               <input type="password" class="form-control" name="c_password" required>

                           </div>


                           <div class="text-center">

                               <button type="submit" name="register" class="btn btn-primary">

                               <i class="fa fa-user-md"></i> Register

                               </button>

                           </div>

                       </form>

                   </div>

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
