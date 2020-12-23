<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "optw";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $stuname=$_GET['sname'];
 $stucode=$_GET['scode'];
 $vidlink=$_GET['vlink'];
  $checkval=$_GET['cval'];
 $res = mysqli_query($conn,"insert into uploadvideofiles
  values('$stuname','$stucode','$vidlink','$checkval')");


   $conn -> close();
    
?>