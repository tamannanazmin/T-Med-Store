<?php
session_start();
$logid = $_SESSION['userid'];
include("includes/db.php");
include("functions/functions.php");
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
                       <a href="customer_account.php">My account</a>
                   </li>
               </ul>

           </div>

           <div class="col-md-3">

          <?php
          include("includes/sidebar.php");
           ?>

         </div>
         <div class="col-md-9">

        <?php
        if(isset($_GET['my_orders'])){
          include("my_orders.php");
        }
        if(isset($_GET['edit_account'])){
          include("edit_account.php");
        }
        if(isset($_GET['change_pass'])){
          include("change_pass.php");
        }
        if(isset($_GET['delete_account'])){
          include("delete_account.php");
        }
        if(isset($_GET['logout'])){
          include("logout.php");
        }

         ?>

       </div>

       </div>
   </div>
   <?php
   //connect to //
   $con = mysqli_connect('localhost','root','','170204048') or die("could not conncect to database");
   if(isset($_POST['update'])){
     //$id = $logid;
     $name = $_POST['c_name'];
     $email = $_POST['c_email'];
     $country = $_POST['c_country'];
     $city = $_POST['c_city'];
     $address = $_POST['c_address'];
     $phone = $_POST['c_contact'];
   //form validation
   if(empty($_POST['c_name'])||empty($_POST['c_email'])||empty($_POST['c_country'])||empty($_POST['c_city'])||empty($_POST['c_address'])||empty($_POST['c_contact']))
   {
     echo "Fill out all fields please";
   }
   else{
     $query = "update user set name = '$name', email = '$email', phone = '$phone', country = '$country', city = '$city', address = '$address' where id = '$logid'";
     $run_customer = mysqli_query($con,$query);
   }
   }
    ?>
    <?php
    //connect to //
    $con = mysqli_connect('localhost','root','','170204048') or die("could not conncect to database");
    if(isset($_POST['change_pass'])){
      //$id = $logid;
      $pass1 = $_POST['password1'];
      $pass2 = $_POST['password2'];
    //form validation
    if(empty($_POST['password1'])||empty($_POST['password2']))
    {
      echo "Fill out all fields please";
    }
    else{
      if($pass1==$pass2){
      $query = "update user set password = '$pass1' where id = '$logid'";
      $run_customer = mysqli_query($con,$query);
    }
    }
    }
 ?>

 <?php
 //connect to //
 $con = mysqli_connect('localhost','root','','170204048') or die("could not conncect to database");
 if(isset($_POST['delete'])){
   $query = "delete from user where id = '$logid'";
   $run_customer = mysqli_query($con,$query);
   session_destroy();
   echo "<script>window.location.href='customer_account_intermediate.php'</script>";
 }
?>


  <?php

    include("includes/footer.php");

    ?>

    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>


</body>
</html>
