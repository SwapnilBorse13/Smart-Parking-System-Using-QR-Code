<?php
session_start();
if ($_SESSION["user"] == "") {
    header("Location: index.php");
    die();
}
session_write_close();
require_once __DIR__ . '/db_config.php';
// Create connection
$conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
if (isset($_POST["Submit"])) {
    $str = $_POST["car_id"];
    $sql = "update car_details set status_='',slotid='',nodeid='' where carname='admin'";

    if ($str == "C") {
        $sql = "update car_details set status_='',slotid='',nodeid='' where carname='admin'";
    } else if ($str == "B") {
        $sql = "update car_details set status_='',slotid='',nodeid='' where carname='admin1'";

    } else {
        $sql = "update car_details set status_='',slotid='',nodeid='' where carname='admin2'";
    }
    if ($conn->query($sql) === true) {
    }
}
?>
<!DOCTYPE HTML>


<html>
	<head>
		<title>Smart Car</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
                <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script>
$(function() {
$("#nav_container").load("navi/student_navi.html"); //navigation
$("#sidebar1").load("side_navi/student_side_navi.html"); //side_nav
});
</script>
<style>
#btnxt{
    background:#223445;
    color:#FFFFFF ;
    border: 1px solid #223445;
    border-radius: 18px;
    -moz-border-radius: 5px;
    display:inline-block;
    width: 100px;
    height: 35px;
    -webkit-font-smoothing: antialiased;
}
</style>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
	</head>
	<body>
	<form method="POST" action="" enctype="multipart/form-data">

<!-- Header -->
		<div id="header">
			<div id="logo-wrapper">
				<div class="container">

					<!-- Logo -->
						<div id="logo">
							<h1><a href="#">Smart Car Parking</a></h1>
						</div>

				</div>
			</div>
			<div class="container">
				<!-- Nav -->
					<nav id="nav">

						<ul>
							<li><a href="user_details.php">View User Details</a></li>
							<li ><a href="node_details.php">View Node Details</a></li>
                            <li><a href="fare_details.php">Update Fare</a></li>
							<li class="active"><a href="admin_exit.php">Exit Car</a></li>
                            <li><a href="Payment_Details.php">Payment History</a></li>
							<li><a href="index.php">Logout</a></li>
						</ul>

					</nav>
			</div>
		</div>

	<!-- Header -->

	<!-- Banner -->
		<div id="banner">
			<div class="container">
			</div>
		</div>
	<!-- /Banner -->

	<!-- Main -->
		<div id="main">

			<!-- Main Content -->
			<div class="container">
				<div class="row">
					<div id="sidebar1" class="3u">
					</div>

					<div class="9u skel-cell-important">
						<section>
							<header>
								<h3 style="font-size:36px; color:#e8a701"  align="center">Charges Details</h3>
							</header>


<div id="results">
<table  border="1" id="tbleresults" bordercolor="#db3b5d" width="100%">



<tr>
<td style="vertical-align:middle" width="15%" align="center">
Select Node Id:
</td>
<td>
<Select id="car_id" name="car_id">
<option>A</option>
<option>B</option>
<option>C</option>
<option>D</option>
</select>

<input style="background-color:#db3b5d" type="submit" id="Submit" name="Submit" value="Exit Car"/>
</td>
</tr>

<?php

?>
</table>

</div>
						</section>
					</div>
				</div>

			</div>
			<!-- /Main Content -->

		</div>
	<!-- /Main -->



	<!-- Copyright -->
  <div id="copyright">
			<div class="container">
				<section>
					Design: <a href="www.thephoenixzone.com">Phoenixzone Technologies Pvt. Ltd.</a>
				</section>
</div>
		</div>

</form>
	</body>
</html>