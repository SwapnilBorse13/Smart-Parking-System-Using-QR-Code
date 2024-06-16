<?php
$response = array();
$car_number = $_GET['car_id'];
$email = $_GET['userid'];
$nodeid = $_GET['nodeid'];
$slotid = $_GET['slotid'];
$intime = $_GET['intime'];

if ($email != null) {
    require_once __DIR__ . '/db_config.php';
    // Create connection
    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $result = mysqli_query($conn, "update car_details set nodeid='" . $nodeid . "', slotid='" . $slotid . "',in_time='" . $intime . "',status_='booked' where carnumber='" . $car_number . "' and userid='" . $email . "'") or die(mysqli_error());

    $response["success"] = 1;
    echo json_encode($response);
}
