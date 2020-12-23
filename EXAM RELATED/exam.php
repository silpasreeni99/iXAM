<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "optw";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $teachername=$_GET['tname'];
 $coursecode=$_GET['ccode'];
 $coursename=$_GET['cname'];
  $courselink=$_GET['clink'];
 $res = mysqli_query($conn,"insert into examform
  values('$teachername','$coursecode','$coursename','$courselink')");


   $conn -> close();
    
?>