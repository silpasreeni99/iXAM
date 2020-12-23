<?php
$dbhost = "localhost"; 
$dbuser = "root";
 $dbpass = "";
 $db = "optw";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $ccode=$_GET['sccode'];
 $tname=$_GET['lname'];

$res1=mysqli_query($conn,"select courselink from examform where teachername='$tname' and coursecode='$ccode' ");
$row = mysqli_fetch_array($res1);
$t1 =  $row[0];


?>
<html>
<head>
	<title>
		EXAM LINK
	</title>
	
</head>

<body>
	<p>
	<a href="<?php echo $t1 ?>" target="_self">YOUR EXAM LINK</a>;
</p>
	</body>

	</html>