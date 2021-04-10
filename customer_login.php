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
                      Login
                   </li>
               </ul>

           </div>

           <div class="col-md-4">



           </div>

           <div class="col-md-4">

               <div class="box">

                   <div class="box-header">

                       <center>

                           <h2> Login to your account </h2>

                       </center>

                       <form action="validation.php" method="post" enctype="multipart/form-data">

                           <div class="form-group">



                               <input type="text" class="form-control" name="c_name" placeholder="Enter your user name.." required>

                           </div>

                           <div class="form-group">

                               <input type="password" class="form-control" name="c_pass" placeholder="Enter your password.." required>

                          </div>

                           <div class="text-center">

                               <button type="submit" name="login" class="btn btn-primary">

                               <i class="fa fa-user-md"></i> Login

                               </button>

                           </div>

                       </form>

                   </div>

               </div>

           </div>

           <div class="col-md-4">



           </div><!-- col-md-4 Finish -->

       </div><!-- container Finish -->
   </div><!-- #content Finish -->


   <?php

    include("includes/footer.php");

    ?>

    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>


</body>
</html>
