<?php
session_start();
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
    <link rel="stylesheet" href="css/contact.css">
</head>
<body>
 <?php
    $active='My Account';
    //include("includes/Starting.php");

    ?>

   <div id="content">
       <div class="container">
           <div class="col-md-12">

               <ul class="bread">
                   <li>
                       <a href="index.php">Home</a>
                   </li>
                   <li>
                      Checkout
                   </li>
               </ul>

           </div>

           <div class="col-md-1">
           </div>

           <?php
           $conn = mysqli_connect("localhost","root","","170204048");
           $logid = $_SESSION['userid'];
           $subtotal = $_SESSION['subtotal'];
           $query2 = "select * from user where id = '$logid'";
           $result = $conn-> query($query2);
           $resultCheck = mysqli_num_rows($result);
           if ($resultCheck == 1 ) {
             while($row = mysqli_fetch_assoc($result)){
               $display_name=$row["name"];
               $display_email=$row["email"];
               $display_username=$row["username"];
               $display_password=$row["password"];
               $display_phone=$row["phone"];
               $display_country=$row["country"];
               $display_city=$row["city"];
               $display_address=$row["address"];
             }
           }
           else{
             echo "No data present";
           }
         ?>

           <div class="col-md-10">

               <div class="box">

                   <div class="box-header">

                       <center>

                           <h2> Leave us a message </h2>

                       </center>

                       <form action="checkout.php" method="post" enctype="multipart/form-data">

                               <label>Customer Name:</label>

                               <input type="text" class="form-control" name="name" value="<?php echo $display_name;?>" readonly><br><br>

                               <label>Customer Email :</label>

                               <input type="text" class="form-control" name="email" value="<?php echo $display_email;?>" readonly><br><br>

                               <label>Your Phone number</label>

                               <input type="text" class="form-control" name="phone" value="<?php echo $display_phone;?>" readonly><br><br>

                               <label>Shipping address:</label>

                               <input type="text" class="form-control" name="address" value="<?php echo $display_address;?>" readonly><br><br>

                               <label>Order date:</label>

                               <input type="text" class="form-control" name="date" value="<?php echo date("Y/m/d");?>" readonly><br><br>

                               <label>Due amount:</label>

                               <input type="text" class="form-control" name="amount" value="<?php echo $subtotal;?>" readonly><br><br>

                           <div class="text-center">

                               <button type="submit" name="order" class="btn btn-primary">

                               <i class="fa fa-user-md"></i> Confirm order

                               </button>

                           </div>

                       </form>

                   </div>

               </div>

           </div>

       </div>
   </div>
<?php
$ip_add = getUserIp();
global $db;
if(isset($_POST['order'])){
    $status = "pending" ;
    if($_POST['amount']!=0)
    {
    $amount = $_POST['amount'];
    $invoice = mt_rand();
    $date = $_POST['date'];
    $select_cart = "select *from cart where ip_add = '$ip_add'";
    $run_cart = mysqli_query($db,$select_cart) or die(mysqli_error());
    //echo $amount;
    //echo $date;
    while ($row_cart = mysqli_fetch_array($run_cart)) {
       $pro_id = $row_cart['p_id'];
       $qty = $row_cart['quantity'];

       $get_pro = "select * from health_equipment where health_equipment_id = '$pro_id'";
       $run_pro = mysqli_query($db,$get_pro);
       while($row = mysqli_fetch_array($run_pro)){
         $insert_cus = "insert into customer_order(customer_id,due_amount,invoice_no,order_date,order_status)
         value('$logid','$amount','$invoice','$date','$status')";
         $run_cus = mysqli_query($db,$insert_cus);
         $insert_pending = "insert into pending_order(customer_id,invoice_no,product_id,quantity,order_status)
         value('$logid','$invoice','$pro_id','$qty','$status')";
         $run_pending = mysqli_query($db,$insert_pending);
         $delete_cart = "delete from cart where ip_add = '$ip_add'";
         $run_delete = mysqli_query($db,$delete_cart);
         echo "<script>alert('Your order has been confirmed')</script>";
         echo "<script>window.location.href='cart.php'</script>";
       }
    }
  }
    else {

      echo "<script>alert('Your cart is empty')</script>";
      echo "<script>window.location.href='cart.php'</script>";

    }
}
 ?>

   <?php

    include("includes/footer.php");

    ?>

    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>


</body>
</html>
