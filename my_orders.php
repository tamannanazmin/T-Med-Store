<div class="box">
    <div class="box-header">
        <center>
          <h2> Order History </h2>
        </center>
         <div class = "table-responsive">
           <table class="table">
             <thead>
               <tr>
                 <th>Order no</th>
                 <th>Invoice no</th>
                 <th>Order date</th>
                 <th>Order status</th>
                 <th>Order total</th>
               </tr>
             </thead>
             <tbody>
               <?php
               $con = mysqli_connect("localhost","root","","170204048");
               $select_orders = "select * from customer_order where customer_id = '$logid'";
               $run_orders = mysqli_query($con,$select_orders);
               $num = mysqli_num_rows($run_orders);
               while ($row = mysqli_fetch_array($run_orders)) {
                   $o_id = $row['order_id'];
                   $i_id = $row['invoice_no'];
                   $amount = $row['due_amount'];
                   $o_date = $row['order_date'];
                   $o_status = $row['order_status'];
                ?>
               <tr>
                 <td><?php echo $o_id;?></td>
                 <td><?php echo $i_id;?></td>
                 <td><?php echo $o_date;?></td>
                 <td><?php echo $o_status;?></td>
                 <td><?php echo $amount;?></td>
               </tr>
          <?php
           }
           ?>
             </tbody>

           </table>
         </div>
         <div class="box-footer">
           <div class = "pull-left">
             <a href = "index.php" class="btn btn-default">
               <i class = "fa fa-chevron-left"></i>Continue shopping
             </a>
         </div>


    </div>

</div>
