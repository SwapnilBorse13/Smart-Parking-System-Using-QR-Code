<?php
$response = array();
$name = $_GET['uname'];
$email = $_GET['email'];
$pass = $_GET['pass'];
$mno = $_GET['mno'];
$city = $_GET['city'];
//$rfid=$_GET['rfid'];

if ($name !== null && $email != null && $pass != null) {

    require_once __DIR__ . '/db_config.php';
    // Create connection
    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $result = mysqli_query($conn, "SELECT * FROM rfid_value WHERE rfid='" . $rfid . "'") or die(mysqli_error());
    if (mysqli_num_rows($result) > 0) {
        $response["Car"] = array();

        $result = mysqli_query($conn, "SELECT * FROM user_details where rfid = '" . $rfid . "'") or die(mysqli_error());
        if (mysqli_num_rows($result) > 0) {
            $response["ddd"] = 1;
            echo json_encode($response);
        } else {

            $result = mysqli_query($conn, "insert into user_details values(0,'" . $name . "','" . $email . "','" . $pass . "','" . $mno . "','" . $city . "','0','" . $rfid . "')") or die(mysqli_error());

            $response["success"] = 1;
            echo json_encode($response);
        }

    } else {
        $response["failed"] = 1;
        echo json_encode($response);
    }

}
