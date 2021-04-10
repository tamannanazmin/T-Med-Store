
 <?php
 //global $userid;
session_start();
//header('location:customer_login.php');
include("functions/functions.php");
 //connect to //
 $con = mysqli_connect('localhost','root','','170204048') or die("could not conncect to database");

 //register user

 $username= $_POST['c_name'];
 $password = $_POST['c_pass'];

 //check db for exixting users with same Username
 //$user_query_check = "SELECT *FROM user1 WHERE username = '$username' && password = '$password' ";
$user_query_check = "SELECT *FROM user WHERE username = '$username' && password = '$password' ";
 $result = mysqli_query($con,$user_query_check);
 $user = mysqli_num_rows($result);
 if($user==1)
 {
   $query2 = "select id from user WHERE username = '$username'";
   $result = $con-> query($query2);
   $resultCheck = mysqli_num_rows($result);
   $ip = getUserIp();
   $select_cart = "select *from cart where ip_add = '$ip'";
   $run_cart = mysqli_query($con,$select_cart);
   $check_cart = mysqli_num_rows($run_cart);
   if ($resultCheck ==1 AND $check_cart==0 ) {  //remove if error from and
     while($row = mysqli_fetch_assoc($result)){
     $userid = $row['id'];
     $_SESSION['userid'] = $userid;
        //$_SESSION['username'] = $username;
        //echo "<script>window.open('check.php')</script>";
        header('location:check.php');
     }
     }
   if ($resultCheck ==1 AND $check_cart!=0 ) {  //remove if error from and
     while($row = mysqli_fetch_assoc($result)){
        $userid = $row['id'];
        $_SESSION['userid'] = $userid;
        //echo "<script>window.open('check.php')</script>";
        //$_SESSION['username'] = $username;
        header('location:check.php');
     }
   }
}
else{
   header('location:customer_login.php');
 }
?>
