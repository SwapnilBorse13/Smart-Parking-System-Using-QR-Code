<?php
session_start();
if (isset($_POST['btnlgn'])) {
    if ($_POST['txtname'] == 'admin' && $_POST['txtpass'] == 'admin') {
        $_SESSION["user"] = $_POST['txtname'];
        header("Location: admin_home.php");
        die();

    }
}
session_write_close();
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
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
        <style>
#btnlgn{
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
					<div class="12u">
						<section>
							<header>
								<h2 align="center">Login</h2>
							</header>
							<table  width="100%" style="color:#db3b5d" ><tr height="15px"><td></td></tr>

<tr>
<td width="35%"></td>
<td width="20%">User Name :</td>
<td width="20%"><input width="100%" type="text" id="txtname" name="txtname"/></td>
<td width="35%"></td>
</tr>
<tr height="10px"><td colspan="6"></td></tr>
<tr>
<td width="6%"></td>
<td width="20%">Password :</td>
<td width="20%"><input width="100%" type="password" id="txtpass" name="txtpass"/></td>
<td width="8%"></td>
</tr>
<tr height="10px"><td colspan="6"></td></tr>
<tr height="10px"><td colspan="6"></td></tr>
<tr>
<td width="20%"></td>
<td width="20%"></td>
<td width="20%"><input style="background-color:#db3b5d" type="submit" id="btnlgn" name="btnlgn" value="Login"/></td>
<td width="6%"></td>
</tr>
<tr>
<td></td>
<td></td>
<td>
<?php
if (isset($_POST['btnlgn'])) {
    if ($_POST['txtname'] != 'admin' || $_POST['txtpass'] != 'admin') {
        echo 'invalid username & password';

    }
}
?>
</td>

<td></td>
</tr>
<tr height="10px"><td colspan="6"></td></tr>
</table>
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
					Design: <a href="">trendy.com</a>
				</section>
</div>
		</div>

</form>
	</body>
</html>