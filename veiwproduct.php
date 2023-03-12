<?php 
session_start();
require_once('connection.php'); 

if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

if(isset($_POST['submit'])){

    $email = mysqli_real_escape_string($connection, $_POST['email']);
    $product = mysqli_real_escape_string($connection, $_POST['product']);
    $quantity = $_POST['quantity'];

    $select = " SELECT * FROM `prequest` WHERE email = '$email' && product= '$product' && quantity= 'quantity' ";

    $result = mysqli_query($connection, $select);
    if (!$result) {
        die('Invalid query: ' . mysqli_error($connection));
    }
    


    if(mysqli_num_rows($result) > 0){
 
       $error[] = 'user already exist!';
 
    }else{
 
       
          $insert = "INSERT INTO `prequest` (email, product, quantity) VALUES ('$email', '$product', '$quantity')";
          mysqli_query($connection, $insert) or die("Couldn't insert<br/>".mysqli_error($connection));
		echo "Record Suceesfully inserted";
        // header('location:login.html');
     
    }
 
 }
else
{
	echo "Can't Inserted".mysqli_error($connection);
}
 
 

mysqli_close($connection);
?>

<html>
<head></head>
<body>
    <p></p>
</body>
</html>














