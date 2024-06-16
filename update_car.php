<?php
$response = array();
$car_name = $_GET['carname'];
$car_number = $_GET['carnumber'];
$car_chasis = $_GET['chasis'];
$car_type = $_GET['type'];
$email = $_GET['old_number'];

if ($email != null) {

    require_once __DIR__ . '/db_config.php';
    // Create connection
    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $result = mysqli_query($conn, "SELECT * FROM car_details where carnumber = '" . $email . "'") or die(mysqli_error());
    if (mysqli_num_rows($result) > 0) {
        $str = mysqli_query($conn, "Update car_details set carname='" . $car_name . "',carnumber='" . $car_number . "',carchasis='" . $car_chasis . "',cartype='" . $car_type . "' where carnumber='" . $email . "'");
        $response["success"] = 1;
        echo json_encode($response);

    } else {
        $response["failed"] = 1;
        echo json_encode($response);
    }
}
