<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "optw";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
echo 'connected Succesfully';
 $username = $_POST['user'];  
    $password = $_POST['pass'];  
      
      
        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($conn, $username);  
        $password = mysqli_real_escape_string($conn, $password);  
      
        $sql = "select *from organiserlogin where oname = '$username' and opassword = '$password'";  
        $result = mysqli_query($conn, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){  
          echo '<script type="text/javascript">';

echo '</script>';
              header('Refresh:0.05; url=http://localhost/iXAM/ORGANISER/activity.html');
        }  
        else{  
           
            echo '<script type="text/javascript">';
echo ' alert(" Invalid username or password")';  
echo '</script>';
            header('Refresh:0.05; url=http://localhost/iXAM/LOGIN/orglogin.html');
        }     
?>  