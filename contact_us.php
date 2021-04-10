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
    $active='Contact Us';
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
                      Contact_us
                   </li>
               </ul>

           </div>

           <div class="col-md-1">
           </div>

           <?php
           $conn = mysqli_connect("localhost","root","","170204048");
           $query2 = "select * from display_contact_info";
           $result = $conn-> query($query2);
           $resultCheck = mysqli_num_rows($result);
           if ($resultCheck > 0) {
             while($row = mysqli_fetch_assoc($result)){
               $display_address=$row["Address"];
               $display_email=$row["Email"];
               $display_phone=$row["Phone"];
               $display_facebook=$row["Facebook"];
             }
           }
           else{
             echo "No data present";
           }
         ?>

           <div class="col-md-5">

               <div class="box">
                 <div class="box-header">
                   <div class="lines">
                      <i class="fa fa-map-marker"></i><span style="color: black"><strong><?php echo " ".$display_address ?></strong></span><br>
                    </div>
                    <div class="lines">
                      <i class="fa fa-envelope"></i><span style="color: black"><strong><?php echo " ".$display_email ?></strong></span><br>
                    </div>
                    <div class="lines">
                      <i class="fa fa-phone"></i><span style="color: black"><strong><?php echo " ".$display_phone ?></strong></span><br>
                    </div>
                    <div class="lines">
                      <i class="fa fa-facebook"></i><span style="color: black"><strong><?php echo " ".$display_facebook ?></strong></span><br>
                    </div>
                    </div>



               </div>

           </div>

           <div class="col-md-6">

               <div class="box">

                   <div class="box-header">

                       <center>

                           <h2> Leave us a message </h2>

                       </center>

                       <form action="contact_us.php" method="post" enctype="multipart/form-data">

                           <div class="form-group">

                               <label>Your name</label>

                               <input type="text" class="form-control" name="contact_name" required>

                           </div>

                           <div class="form-group">

                               <label>Your Email</label>

                               <input type="text" class="form-control" name="contact_email" required>

                           </div>

                           <div class="form-group">

                               <label>Your Phone number</label>

                               <input type="text" class="form-control" name="contact_phone" required>

                           </div>

                           <div class="form-group">

                               <label>Your message</label>

                               <input type="text" class="form-control" name="contact_message" required>

                           </div>

                           <div class="text-center">

                               <button type="submit" name="submit" class="btn btn-primary">

                               <i class="fa fa-user-md"></i> Send

                               </button>

                           </div>

                       </form>

                   </div>

               </div>

           </div>

       </div>
   </div>
<?php
if(isset($_POST['submit'])){
  if(!empty($_POST['contact_name'])&&!empty($_POST['contact_email'])&&!empty($_POST['contact_phone'])&&!empty($_POST['contact_message'])){
    $name = $_POST['contact_name'];
    $email =$_POST['contact_email'];
    $phone =$_POST['contact_phone'];
    $message=$_POST['contact_message'];
    $query = "insert into save_contact_us_message(Name,Email,Phone,Message) value('$name','$email','$phone','$message')";
    $run = mysqli_query($conn,$query) or die(mysqli_error());
    if($run){
      echo "Form submitted successfully";
    }
    else {
      echo "Form not submitted";
    }
  }
  else {
    echo "Enter all fields values";
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
