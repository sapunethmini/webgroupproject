<?php
  
  session_start();
  if(!isset($_SESSION['uname'])) {
      header("Location: login.php");
  }
?>

<!DOCTYPE html> 
<html> 
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.ssp {
  color: rgba(255, 242, 0, 0.989);
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #333eb2;
}

.dropdown {
  position: relative;
  display: inline-block;
}


.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
</style>

    </head>


<body bgcolor="white">

    <h1 class="ssp">SUPPLY CHAIN</h1><br/><br/>

    <table>
        <tr>
            <div class="show">
            <th><button onclick="document.location='default.asp'">Home</button></th>
            <th><a href="product.html" target="f1" class="button">Add product</a></th>
            <th><button onclick="document.location='default.asp'">contact company</button></th>
            <th><button onclick="document.location='default.asp'">feedback</button></th>
           
           
       </tr>
    </table>
    <hr>
  <br/>
  <p>welcome</p>
    <iframe src="1.png" name="f1" height="900px" width="100%" >
    </iframe>
</html>