<div class="panel panel-default sidebar-menu">

    <div class="panel-heading">

        <center>

            <img src="images/user.jpg" alt="User Profile">

        </center>

        <br/>

        <h3 align="center" class="panel-title">

          <?php
          $logid = $_SESSION['userid'];
          $conn = mysqli_connect("localhost","root","","170204048");
          $query2 = "select * from user where id = '$logid'";
          $result = $conn-> query($query2);
          $row = mysqli_fetch_array($result);
              $display_name=$row["name"];
            echo $display_name;
          ?>

        </h3>

    </div>

    <div class="panel-body">

        <ul class="nav-pills nav-stacked nav">

            <li class="<?php if(isset($_GET['my_orders'])){ echo "active"; } ?>">

                <a href="customer_account.php?my_orders">

                    <i class="fa fa-list"></i> My Orders

                </a>

            </li>

            <li class="<?php if(isset($_GET['edit_account'])){ echo "active"; } ?>">

                <a href="customer_account.php?edit_account">

                    <i class="fa fa-pencil"></i> Edit Account

                </a>

            </li>

            <li class="<?php if(isset($_GET['change_pass'])){ echo "active"; } ?>">

                <a href="customer_account.php?change_pass">

                    <i class="fa fa-user"></i> Change Password

                </a>

            </li>

            <li class="<?php if(isset($_GET['delete_account'])){ echo "active"; } ?>">

                <a href="customer_account.php?delete_account">

                    <i class="fa fa-trash-o"></i> Delete Account

                </a>

            </li>

            <li>

                <a href="logout.php">

                    <i class="fa fa-sign-out"></i> Log Out

                </a>

            </li>

        </ul>
    </div>

</div>
