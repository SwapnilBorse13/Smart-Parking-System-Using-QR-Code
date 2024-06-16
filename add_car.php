<?php
$response = array();
$car_name = $_GET['carname'];
$car_number = $_GET['carnumber'];
$car_chasis = $_GET['chasis'];
$car_type = $_GET['type'];
$email = $_GET['email'];

if ($email != null) {
    require_once __DIR__ . '/db_config.php';
    // Create connection
    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $result = mysqli_query($conn, "insert into car_details(car_id,carname,carnumber,carchasis,cartype,userid,status_) values(0,'" . $car_name . "','" . $car_number . "','" . $car_chasis . "','" . $car_type . "','" . $email . "','')") or die(mysqli_error());

    $response["success"] = 1;
    echo json_encode($response);
}
