<?php 
$dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "optw";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die(); 
 
$sql = "SELECT studentname, usn,videolink, checksumval from uploadvideofiles;";  
$setRec = mysqli_query($conn, $sql);  
$columnHeader = '';  
$columnHeader = "Name" . "\t" . "USN" . "\t" . "VideoLink" . "\t" . "Checksumval" . "\t";  
$setData = '';  
  while ($rec = mysqli_fetch_row($setRec)) {  
    $rowData = '';  
    foreach ($rec as $value) {  
        $value = '"' . $value . '"' . "\t";  
        $rowData .= $value;  
    }  
    $setData .= trim($rowData) . "\n";  
}  
  
header("Content-type: application/octet-stream");  
header("Content-Disposition: attachment; filename=User_Detail.xls");  
header("Pragma: no-cache");  
header("Expires: 0");  

  echo ucwords($columnHeader) . "\n" . $setData . "\n";  
 ?> 