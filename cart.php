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
    <link rel="stylesheet" href="css/contact.css">

</head>
<body>

   <?php
   session_start();
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
                       <a href="cart.php">Cart</a>
                   </li>
               </ul>

           </div>


           <div class="col-md-12">

               <div class="box">

                   <div class="box-header">
                      <form action="cart.php" method="post" enctype="multipart/form-data">
                       <center>
                         <h2> Shopping Cart </h2>
                         <?php
                         $con = mysqli_connect("localhost","root","","170204048");
                         $ip_add = getUserIp();
                         $select_cart = "select *from cart where ip_add = '$ip_add'";
                         $run_cart = mysqli_query($con,$select_cart);
                         $num = mysqli_num_rows($run_cart);
                          ?>
                       </center>
                       <p> Currently you have <?php echo $num?> item(s) in your cart</p>
                        <div class = "table-responsive">
                          <table class="table">
                            <thead>
                              <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Unit price</th>
                                <th>Sub Total</th>
                                <th>Delete</th>
                              </tr>
                            </thead>
                            <tbody>
                              <?php
                              $con = mysqli_connect("localhost","root","","170204048");
                              $total = 0;
                              while ($row = mysqli_fetch_array($run_cart)) {
                                  $pro_id = $row['p_id'];
                                  $pro_qty = $row['quantity'];
                                  $get_products = "select *from health_equipment where health_equipment_id = '$pro_id' ";
                                  $run_pro = mysqli_query($con,$get_products);
                                  while ($row = mysqli_fetch_array($run_pro)) {
                                    $pro_title = $row['health_equipment_title'];
                                    $pro_price = $row['health_equipment_price'];
                                    $pro_subtotal = $row['health_equipment_price']*$pro_qty;
                                    $total = $total+$pro_subtotal;

                               ?>
                              <tr>
                                <td><?php echo $pro_title;?></td>
                                <td><?php echo $pro_qty;?></td>
                                <td><?php echo $pro_price;?></td>
                                <td><?php echo $pro_subtotal;?></td>
                                <td><input type = "checkbox" name = "remove[]" value="<?php echo $pro_id?>"></td>
                              </tr>
                            <?php } } ?>
                            </tbody>
                            <tfoot>
                              <tr>
                                <th colspan="3">Total</th>
                                <th colspan="2"><?php echo $total;?></th>
                              </tr>
                            </tfoot>
                          </table>

                        </div>
                        <div class="box-footer">
                          <div class = "pull-left">
                            <a href = "index.php" class="btn btn-default">
                              <i class = "fa fa-chevron-left"></i>Continue shopping
                            </a>
                        </div>
                        <div class="pull-right">
                          <button class="btn btn-default" type = "submit" name="update" value="Update Cart">
                            <i class="fa fa-refresh">Update Cart</i>
                          </button>

                          <?php

                          if(!isset($_SESSION['userid']))
                           {
                             ?>
                             <a href="customer_login.php" class="btn btn-primary">
                           <?php

                         }

                           else if(isset($_SESSION['userid'])){
                             $_SESSION['subtotal'] = $total;
                             ?>
                            <a href="checkout.php" class="btn btn-primary">
                           <?php

                         }
                           ?>

                        Checkout <i class="fa fa-chevron-right"></i>
                      </a>
                        </div>


                      </form>

                   </div>
                    
                   <?php
                   function update_cart()
                   {
                     global $db;
                     if(isset($_POST['update']))
                     {
                       foreach ($_POST['remove'] as $remove_id) {
                         $delete_product = "delete from cart where p_id='$remove_id'";
                         $run_delete = mysqli_query($db,$delete_product);
                         if($run_delete){
                           echo "<script>window.open('cart.php','_self')</script>";
                         }
                       }
                     }
                   }
                   echo @$up_cart = update_cart();
                   ?>

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
