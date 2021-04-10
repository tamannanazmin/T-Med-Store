<div id="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3">

               <h4>Pages</h4>

                <ul>
                    <li><a href="HealthEquipment.php">Health Equipment</a></li>
                    <li><a href="Medicines.php">Medicines</a></l
                    <li><a href="contact_us.php">Contact Us</a></li>
                </ul>

                <br>
                <br>
                <h4>User Section</h4>
                <br>

                <ul>
                    <li><a href="customer_login.php">Login</a></li>
                    <li><a href="customer_register.php">Register</a></li>
                </ul>



            </div>

            <div class="com-sm-6 col-md-3">

                <h4>Top Products Categories</h4>

                <ul>
                   <?php

                        $get_p_cats = "select * from health_equipment_cat";

                        $run_p_cats = mysqli_query($con,$get_p_cats);

                        while($row_p_cats=mysqli_fetch_array($run_p_cats)){

                            $p_cat_id = $row_p_cats['health_equipment_cat_id'];

                            $p_cat_title = $row_p_cats['health_equipment_cat_title'];

                            echo "

                                <li>

                                    <a href='HealthEquipment.php?p_cat_id=$p_cat_id'>

                                        $p_cat_title

                                    </a>

                                </li>

                            ";

                        }

                    ?>
                </ul>



            </div>

            <div class="col-sm-6 col-md-3">

                <h4>Find Us</h4>

                <p>

                    <strong>Medicine Shop inc.</strong>
                    <br/>Bangladesh
                    <br/>Dhaka
                    <br/>+88 01789098654
                    <br/>tmedstore@gmail.com
                    <br/><strong></strong>

                </p>

                <a href="contact_us.php">Check Our Contact Page</a>


            </div>

            <div class="col-sm-6 col-md-3">



                <h4>Keep In Touch</h4>

                <p class="social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-google-plus"></a>
                    <a href="#" class="fa fa-envelope"></a>
                </p>

            </div>
        </div>
    </div>
</div>


<div id="copyright">
    <div class="container">
        <div class="col-md-6">

            <p class="pull-left">&copy; 2020 Medicine Shop All Rights Reserve</p>

        </div>
        <div class="col-md-6">

            <p class="pull-right">Theme by: <a href="#">Tamanna and Tahiya</a></p>

        </div>
    </div>
</div>
