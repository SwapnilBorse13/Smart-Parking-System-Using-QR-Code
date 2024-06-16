<?php

$response = array();

$name = $_GET['uname'];
$email = $_GET['email'];
$pass = $_GET['pass'];
$mno = $_GET['mno'];
$city=$_GET['city'];

if ($email != null) {

require_once __DIR__ . '/db_config.php';

   // Create connection
   $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD,DB_DATABASE);
   // Check connection
   if (!$conn) {
     die("Connection failed: " . mysqli_connect_error());
   }
$result = mysqli_query($conn,"SELECT * FROM user_details where email = '".$email."' and password = '".$pass."'") or die(mysqli_error());
if(mysqli_num_rows($result) > 0)
{
	$str=mysqli_query($conn,"Update user_details set full_name='".$name."',password='".$pass."',mobile='".$mno."',city='".$city."' where email='".$email."'");
	$response["success"] = 1;
   echo json_encode($response);
   
}
else
{
  $response["failed"] = 1;
   echo json_encode($response);
}
}
?>
