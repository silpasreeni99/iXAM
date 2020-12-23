<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "optw";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 $username = " ";
 $password = " ";
 if(isset($_POST['user'])){
    $username = $_POST['user'];
 }
 if(isset($_POST['pass'])){
    $password = $_POST['pass']; }
    
      
      
        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($conn, $username);  
        $password = mysqli_real_escape_string($conn, $password);  
      
        $sql = "select *from logindetails where username = '$username' and password = '$password'";  
        $result = mysqli_query($conn, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){ 
              header('location:http://localhost/iXAM/INSTRUCTIONS/maintest.html');
              exit;
        }  
        else{ 
            header('location:http://localhost/iXAM/LOGIN/can.html?error=incorrect password');

        }     
?>