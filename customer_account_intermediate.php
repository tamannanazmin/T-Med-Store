<?php

session_start();
if(!isset($_SESSION['userid']))
 {

   header('location:customer_login.php');
}
else if(isset($_SESSION['userid']))
 {

   header('location:customer_account.php');
}
 ?>
