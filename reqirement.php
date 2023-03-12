<?php 
session_start();
require_once('connection.php'); 

if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

function fetchData($connection){
    
    $sql = "SELECT * FROM `reuest`";
    $result = $connection->query($sql);
    
    if ($result->num_rows > 0) {
    $row= $result->fetch_all(MYSQLI_ASSOC);
    return $row;  
}else{
    return $row=[];
}
}
?>

<!DOCTYPE html>
<html>
<head>
<style>
    .status-btn{
       border:none; 
       color:white; 
       padding:5px 10px;
       width:100px;
       cursor: pointer;
       box-shadow:0px 0px 15px gray
    }
    .approve{
        background-color:green;
    }
    .disapprove{
        background-color:red;
    }
    </style>
</head>
<body>
<!-- ===== displaying data with approval button ===== -->
<table border="1" cellspacing="0" cellpadding="10" width="50%">
    <tr>
        <th>S.N</th>
        <th>Heading</th>
        <th>Content</th>
        <th>Status</th>
   </tr>
<?php
$fetchData = fetchData($connection);
if(count($fetchData)>0){
$i=1;
foreach($fetchData as $data){
?>
   <tr>
       <td><?php echo $i; ?></td>
       <td><?php echo $data['heading']; ?></td>
       <td><?php echo $data['content']; ?></td>
       <td><button onclick="updateStatus(<?php echo $data['id'];?>)" id="statusBtn<?php echo $data['id'];?>" class="status-btn <?php echo $data['status']==0?'approve':'disapprove'; ?>"><?php echo $data['status']==0?'Approve':'Disapprove'; ?></button></td>
    
    <tr>
        <?php  $i++; } } ?>
</table>
<!-- ============displaying data with approval button========== -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script scr="custom-ajax.js" /></script>
</body>
</html>