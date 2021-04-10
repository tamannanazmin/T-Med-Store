
 <?php

 session_start();
header('location:customer_login.php');

 //connect to //
 $con = mysqli_connect('localhost','root','','170204048') or die("could not conncect to database");
 include("functions/functions.php");
 //register user
 $name = $_POST['c_name'];
 $email = $_POST['c_email'];
 $country = $_POST['c_country'];
 $city = $_POST['c_city'];
 $address = $_POST['c_address'];
 $phone = $_POST['c_contact'];
 $username= $_POST['c_username'];
 $password = $_POST['c_password'];
 $ip = getUserIp();
 //form validation
 if(empty($_POST['c_name'])||empty($_POST['c_email'])||empty($_POST['c_country'])||empty($_POST['c_city'])||empty($_POST['c_address'])||empty($_POST['c_contact'])||empty($_POST['c_username'])||empty($_POST['c_password']))
 {
   echo "Fill out all fields please";
 }

 //check db for exixting users with same Username
 //$user_query_check = "SELECT *FROM user1 WHERE username = '$username'";
 $user_query_check = "SELECT *FROM user WHERE username = '$username'";
 $num = mysqli_query($con,$user_query_check);
 $user = mysqli_num_rows($num);
 if($user==1){

     echo "Username already exists";
   }
else{
  // $password1 = md5($password);
   //$query =  "INSERT INTO user1 (name, email, username, password, phone, country, city, address)VALUES ('$name', '$email', '$username', '$password', '$phone', '$country', '$city', '$address')";
   $query =  "INSERT INTO user (name, email, username, password, phone, country, city, address,ip_add)
VALUES ('$name', '$email', '$username', '$password', '$phone', '$country', '$city', '$address','$ip')";
   mysqli_query($con,$query);
   echo "Registration successful";
 }
  ?>
