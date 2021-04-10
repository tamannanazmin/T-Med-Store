<?php

$db = mysqli_connect("localhost","root","","170204048");

//begin function for getting user ip//
function getUserIp(){
  switch (true) {
    case(!empty($_SERVER['HTTP_X_REAL_IP'])): return $_SERVER['HTTP_X_REAL_IP'];
    case(!empty($_SERVER['HTTP_CLIENT_IP'])): return $_SERVER['HTTP_CLIENT_IP'];
    case(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])): return $_SERVER['HTTP_X_FORWARDED_FOR'];

    default:
      return $_SERVER['REMOTE_ADDR'];

}
}
//end function for getting user ip//

function addCart(){
  global $db;
  if(isset($_GET['add_cart']))
{
    $ip_add = getUserIp();
    $p_id = $_GET['add_cart'];
    $product_quantity = $_POST['product_qty'];
    $check_product = "select * from cart where ip_add = '$ip_add' AND p_id = '$p_id'";
    $run_check = mysqli_query($db,$check_product);
   if(mysqli_num_rows($run_check)>0)
    {
      echo "<script>alert('This prodect is already added in cart')</script>";

    }
    else
      $query = "insert into cart(p_id,ip_add,quantity) values('$p_id','$ip_add','$product_quantity')";
      $run = mysqli_query($db,$query);
      echo "<script>window.open('details.php?pro_id=$p_id','_self')</script>";

}
}




///begin getpro() funtion///
function getPro(){

    global $db;

    $get_products = "select * from health_equipment order by 1 DESC LIMIT 0,12";

    $run_products = mysqli_query($db,$get_products);

    while($row_products=mysqli_fetch_array($run_products)){

        $pro_id = $row_products['health_equipment_id'];

        $pro_title = $row_products['health_equipment_title'];

        $pro_price = $row_products['health_equipment_price'];

        $pro_img1 = $row_products['health_equipment_img'];

        echo "

        <div class='col-md-4 col-sm-6 single'>

            <div class='product'>

                <a href='details.php?pro_id=$pro_id'>

                    <img class='img-responsive' src='admin_area/product_images/$pro_img1'>

                </a>

                <div class='text'>

                    <h3>

                        <a href='details.php?pro_id=$pro_id'>

                            $pro_title

                        </a>

                    </h3>

                    <p class='price'>

                        BDT $pro_price

                    </p>

                    <p class='button'>

                        <a class='btn btn-default' href='details.php?pro_id=$pro_id'>

                            View Details

                        </a>

                        <a class='btn btn-primary' href='details.php?pro_id=$pro_id'>

                            <i class='fa fa-shopping-cart'></i> Add to Cart

                        </a>

                    </p>

                </div>

            </div>

        </div>

        ";

    }

}
///end of get Pro() funtion///


///begin of getPCats1() function///
function getPCats1(){
     global $db;
     $get_p_cats="select * from health_equipment_cat LIMIT 0,4";
     $run_p_cats=mysqli_query($db,$get_p_cats);

     while($row_p_cats= mysqli_fetch_array($run_p_cats)){
        $p_cat_id=$row_p_cats['health_equipment_cat_id'];
         $p_cat_title=$row_p_cats['health_equipment_cat_title'];

         echo"
            <li>
                <a href='HealthEquipment.php?p_cat1=$p_cat_id'>$p_cat_title</a>

                </li>
         ";
     }


}
////end of getPCats1()function///

///begin of getPCats2() function///
function getPCats2(){
     global $db;
     $get_p_cats="select * from health_equipment_cat LIMIT 4,5";
     $run_p_cats=mysqli_query($db,$get_p_cats);

     while($row_p_cats= mysqli_fetch_array($run_p_cats)){
        $p_cat_id=$row_p_cats['health_equipment_cat_id'];
         $p_cat_title=$row_p_cats['health_equipment_cat_title'];

         echo"
            <li>
                <a href='HealthEquipment.php?p_cat2=$p_cat_id'>$p_cat_title</a>

                </li>
         ";
     }


}
////end of getPCats2()function///

///begin of getPCats3() function///
function getPCats3(){
     global $db;
     $get_p_cats="select * from health_equipment_cat LIMIT 9,10";
     $run_p_cats=mysqli_query($db,$get_p_cats);

     while($row_p_cats= mysqli_fetch_array($run_p_cats)){
        $p_cat_id=$row_p_cats['health_equipment_cat_id'];
         $p_cat_title=$row_p_cats['health_equipment_cat_title'];

         echo"
            <li>
                <a href='HealthEquipment.php?p_cat3=$p_cat_id'>$p_cat_title</a>

                </li>
         ";
     }


}
////end of getPCats3()function///



///begin of getpcatpro1() function///
function getpcatpro1(){

    global $db;

    if(isset($_GET['p_cat1'])){

        $p_cat_id = $_GET['p_cat1'];

        $get_p_cat ="select * from health_equipment_cat where   health_equipment_cat_id='$p_cat_id'";

        $run_p_cat = mysqli_query($db,$get_p_cat);

        $row_p_cat = mysqli_fetch_array($run_p_cat);

        $p_cat_title = $row_p_cat['health_equipment_cat_title'];

        $p_cat_desc = $row_p_cat['health_equipment_cat_desc'];

        $get_products ="select * from health_equipment where health_equipment_cat_id='$p_cat_id'";

        $run_products = mysqli_query($db,$get_products);

        $count = mysqli_num_rows($run_products);

        if($count==0){

            echo "

                <div class='box'>

                    <h1> No Product Found In This Product Categories </h1>

                </div>

            ";

        }else{

            echo "

                <div class='box'>

                    <h1> $p_cat_title </h1>

                    <p> $p_cat_desc </p>

                </div>

            ";

        }

        while($row_products=mysqli_fetch_array($run_products)){

            $pro_id = $row_products['health_equipment_id'];

            $pro_title = $row_products['health_equipment_title'];

            $pro_price = $row_products['health_equipment_price'];

            $pro_img1 = $row_products['health_equipment_img'];

            echo "
            <div class='col-md-4 col-sm-6 center-responsive'>

            <div class='product'>

                <a href='details.php?pro_id=$pro_id'>

                    <img class='img-responsive' src='admin_area/product_images/$pro_img1'>

                </a>

                <div class='text'>

                    <h3>

                        <a href='details.php?pro_id=$pro_id'>

                            $pro_title

                        </a>

                    </h3>

                    <p class='price'>

                        BDT $pro_price

                    </p>

                    <p class='button'>

                        <a class='btn btn-default' href='details.php?pro_id=$pro_id'>

                            View Details

                        </a>

                        <a class='btn btn-primary' href='details.php?pro_id=$pro_id'>

                            <i class='fa fa-shopping-cart'></i> Add to Cart

                        </a>

                    </p>

                </div>

            </div>

        </div>

            ";

        }

    }

}

/// finish getpcatpro1 functions ///


///begin of getpcatpro2() function///
function getpcatpro2(){

    global $db;

    if(isset($_GET['p_cat2'])){

        $p_cat_id = $_GET['p_cat2'];

        $get_p_cat ="select * from health_equipment_cat where   health_equipment_cat_id='$p_cat_id'";

        $run_p_cat = mysqli_query($db,$get_p_cat);

        $row_p_cat = mysqli_fetch_array($run_p_cat);

        $p_cat_title = $row_p_cat['health_equipment_cat_title'];

        $p_cat_desc = $row_p_cat['health_equipment_cat_desc'];

        $get_products ="select * from health_equipment where health_equipment_cat_id='$p_cat_id'";

        $run_products = mysqli_query($db,$get_products);

        $count = mysqli_num_rows($run_products);

        if($count==0){

            echo "

                <div class='box'>

                    <h1> No Product Found In This Product Categories </h1>

                </div>

            ";

        }else{

            echo "

                <div class='box'>

                    <h1> $p_cat_title </h1>

                    <p> $p_cat_desc </p>

                </div>

            ";

        }

        while($row_products=mysqli_fetch_array($run_products)){

            $pro_id = $row_products['health_equipment_id'];

            $pro_title = $row_products['health_equipment_title'];

            $pro_price = $row_products['health_equipment_price'];

            $pro_img1 = $row_products['health_equipment_img'];

            echo "
            <div class='col-md-4 col-sm-6 center-responsive'>

            <div class='product'>

                <a href='details.php?pro_id=$pro_id'>

                    <img class='img-responsive' src='admin_area/product_images/$pro_img1'>

                </a>

                <div class='text'>

                    <h3>

                        <a href='details.php?pro_id=$pro_id'>

                            $pro_title

                        </a>

                    </h3>

                    <p class='price'>

                        BDT $pro_price

                    </p>

                    <p class='button'>

                        <a class='btn btn-default' href='details.php?pro_id=$pro_id'>

                            View Details

                        </a>

                        <a class='btn btn-primary' href='details.php?pro_id=$pro_id'>

                            <i class='fa fa-shopping-cart'></i> Add to Cart

                        </a>

                    </p>

                </div>

            </div>

        </div>

            ";

        }

    }

}

/// finish getpcatpro2 functions ///


///begin of getpcatpro3() function///
function getpcatpro3(){

    global $db;

    if(isset($_GET['p_cat3'])){

        $p_cat_id = $_GET['p_cat3'];

        $get_p_cat ="select * from health_equipment_cat where   health_equipment_cat_id='$p_cat_id'";

        $run_p_cat = mysqli_query($db,$get_p_cat);

        $row_p_cat = mysqli_fetch_array($run_p_cat);

        $p_cat_title = $row_p_cat['health_equipment_cat_title'];

        $p_cat_desc = $row_p_cat['health_equipment_cat_desc'];

        $get_products ="select * from health_equipment where health_equipment_cat_id='$p_cat_id'";

        $run_products = mysqli_query($db,$get_products);

        $count = mysqli_num_rows($run_products);

        if($count==0){

            echo "

                <div class='box'>

                    <h1> No Product Found In This Product Categories </h1>

                </div>

            ";

        }else{

            echo "

                <div class='box'>

                    <h1> $p_cat_title </h1>

                    <p> $p_cat_desc </p>

                </div>

            ";

        }

        while($row_products=mysqli_fetch_array($run_products)){

            $pro_id = $row_products['health_equipment_id'];

            $pro_title = $row_products['health_equipment_title'];

            $pro_price = $row_products['health_equipment_price'];

            $pro_img1 = $row_products['health_equipment_img'];

            echo "
            <div class='col-md-4 col-sm-6 center-responsive'>

            <div class='product'>

                <a href='details.php?pro_id=$pro_id'>

                    <img class='img-responsive' src='admin_area/product_images/$pro_img1'>

                </a>

                <div class='text'>

                    <h3>

                        <a href='details.php?pro_id=$pro_id'>

                            $pro_title

                        </a>

                    </h3>

                    <p class='price'>

                        BDT $pro_price

                    </p>

                    <p class='button'>

                        <a class='btn btn-default' href='details.php?pro_id=$pro_id'>

                            View Details

                        </a>

                        <a class='btn btn-primary' href='details.php?pro_id=$pro_id'>

                            <i class='fa fa-shopping-cart'></i> Add to Cart

                        </a>

                    </p>

                </div>

            </div>

        </div>

            ";

        }

    }

}

/// finish getpcatpro3 functions ///





?>
