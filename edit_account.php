<?php
$conn = mysqli_connect("localhost","root","","170204048");
//$id = $_SESSION['userid'];
$query2 = "select * from user where id = '$logid'";
$result = $conn-> query($query2);
$row = mysqli_fetch_array($result);
    $display_name=$row["name"];
    $display_email=$row["email"];
    $display_username=$row["username"];
    $display_password=$row["password"];
    $display_phone=$row["phone"];
    $display_country=$row["country"];
    $display_city=$row["city"];
    $display_address=$row["address"];
?>
<div class="box">

    <div class="box-header">

        <center>

            <h2> Edit Profile </h2>

        </center>

        <form action="customer_account.php" method="post" enctype="multipart/form-data">

            <div class="form-group">

                <label>Your Name</label>

                <input type="text" class="form-control" name="c_name" value="<?php echo $display_name;?>"  required>

            </div>

            <div class="form-group">

                <label>Your Email</label>

                <input type="text" class="form-control" name="c_email" value="<?php echo $display_email;?>" required>

            </div>

            <div class="form-group">

                <label>Your Country</label>

                <input type="text"  class="form-control" name="c_country" value="<?php echo $display_country;?>" required>

            </div>

            <div class="form-group">

                <label>Your City</label>

                <input type="text" class="form-control" name="c_city" value="<?php echo $display_city;?>" required>

            </div>

            <div class="form-group">

                <label>Phone</label>

                <input type="text"  class="form-control" name="c_contact" value="<?php echo $display_phone;?>" required>

            </div>

            <div class="form-group">

                <label>Your Address</label>

                <input type="text"  class="form-control" name="c_address" value="<?php echo $display_address;?>" required>

            </div>

            <div class="text-center">

                <button type="submit" name="update" class="btn btn-primary">

                <i class="fa fa-user-md"></i> Update

                </button>

            </div>

        </form>

    </div>

</div>
