<div id="top">

       <div class="container">

           <div class="col-md-6 offer">

                <h3>T Med Store</h3>
           </div>

           <div class="col-md-6">

               <ul class="menu">

                   <li>
                       <a href="customer_register.php">Register</a>
                   </li>
                   <li>
                       <a href="customer_login.php">Login</a>
                   </li>
                   <li>
                       <a href="logout.php">Logout</a>
                   </li>
                   <li>
                       <a href="cart.php">Cart</a>
                   </li>

               </ul>

           </div>

       </div>

   </div>

   <div id="navbar" class="navbar navbar-default">

       <div class="container">

           <div class="navbar-header">

               <a href="index.php" class="navbar-brand home">
              
                 <?php
                 $conn = mysqli_connect("localhost","root","","170204048");
                 $query2 = "select * from about_us_images where ID = '2'";
                 $result = $conn-> query($query2);
                 $resultCheck = mysqli_num_rows($result);
                 if ($resultCheck > 0 ) {
                   while($row = mysqli_fetch_assoc($result)){
                     $display_image1=$row["location"];
                   }
                 }
                  ?>
                  <img src="<?php echo $display_image1; ?>" alt="T MED STORE" class="hidden-xs">
                  <img src="<?php echo $display_image1; ?>" alt="T MED STORE" class="visible-xs">

               </a>

               <button class="navbar-toggle" data-toggle="collapse" data-target="#navigation">

                   <span class="sr-only">Toggle Navigation</span>

                   <i class="fa fa-align-justify"></i>

               </button>

               <button class="navbar-toggle" data-toggle="collapse" data-target="#search">

                   <span class="sr-only">Toggle Search</span>

                   <i class="fa fa-search"></i>

               </button>

           </div>

           <div class="navbar-collapse collapse" id="navigation">

               <div class="padding-nav">

                   <ul class="nav navbar-nav left">


                       <li class="<?php if($active=='Home') echo"active"; ?>">
                           <a href="index.php">Home</a>
                       </li>
                       <li class="dropdown <?php if($active=='HEALTH EQUIPMENTS') echo"active"; ?>">
                          <a href="HealthEquipment.php" class="dropbtn">HEALTH EQUIPMENTS</a>
                          <div class="dropdown-content">
                            <div class="col-md-4 offer">
                              <div class="nav-option">
                                <a href="#">FIRST AID</a>
                              </div>
                              <a href="bandAid.php">BandAid</a>
                              <a href="Gauge.php">Gauge</a>
                              <a href="Scissors.php">Scissors</a>
                              <a href="Patch.php">Patch</a>
                              </div>

                              <div class="col-md-4">
                              <div class="nav-option">
                                <a href="#">MEETERS/MONITORS</a>
                              </div>
                              <a href="Thermometer.php">Thermometer</a>
                              <a href="Stethoscope.php">Stethoscope</a>
                              <a href="Blood_glucose_meter.php">Blood glucose meter</a>
                              <a href="Blood_pressure_monitor.php">Blood pressure monitor</a>
                              <a href="Weight_scale.php">Weight scale</a>
                            </div>

                            <div class="col-md-4">
                                <div class="nav-option">
                                  <a href="#">OTHERS</a>
                                </div>
                                <a href="Syringe.php">Syringe</a>
                                <a href="Inhaler.php">Inhaler</a>
                                <a href="Heating_pad.php">Heating pad</a>
                                <a href="Hot_water_bag.php">Hot water bag</a>
                                <a href="Ice_pack.php">Ice pack</a>
                                <a href="Insulin.php">Insulin</a>
                              </div>

                        </div>
                       </li>
                        <li class="dropdown <?php if($active=='MEDICINES') echo"active"; ?>">
                            <a href="Medicines.php" class="dropbtn">MEDICINES</a>
                            <div class="dropdown-content">
                              <div class="col-md-4 offer">
                                     <div class="nav-option">
                                          <a href="#">ORAL</a>
                                      </div>

                                <a href="Medicines.php">Analgesic</a>
                                <a href="Medicines.php">Antipyretics</a>
                                <a href="Medicines.php">Antibiotics</a>
                                <a href="Medicines.php">Antihistamine</a>
                                <a href="Medicines.php">Acidity</a>
                                <a href="Medicines.php">Asthma</a>
                                <a href="Medicines.php">Sedatives</a>
                                <a href="Medicines.php">Antiprotozoal</a>
                                </div>


                              <div class="col-md-4 offer">
                                <div class="nav-option">
                                     <a href="#">TOPICAL</a>
                                 </div>

                              <a href="Medicines.php">Ointments</a>
                              <a href="Medicines.php">Antiseptic</a>
                              <a href="Medicines.php">Cream</a>
                              <a href="Medicines.php">Lotion</a>
                              <a href="Medicines.php">Spray</a>
                              <a href="Medicines.php">Gel</a>
                           </div>

                           <div class="col-md-4 offer">
                            <div class="nav-option">
                                 <a href="#">DROPS</a>
                             </div>

                          <a href="Medicines.php">Ear drops</a>
                          <a href="Medicines.php">Eye drops</a>
                          <a href="Medicines.php">Nasal drops</a>

                       </div>

                         </div>
                       </li>


                       <li class="<?php if($active=='My Account') echo"active"; ?>">
                           <a href="customer_account_intermediate.php">My Account</a>
                       </li>

                       <li class="<?php if($active=='About Us') echo"active"; ?>">
                           <a href="about_us.php">About Us</a>
                       </li>

                        <li class="<?php if($active=='Contact Us') echo"active"; ?>">
                           <a href="contact_us.php">Contact Us</a>
                       </li>

                   </ul>

               </div>




                   </form>

               </div>

           </div>

       </div>

   </div>
