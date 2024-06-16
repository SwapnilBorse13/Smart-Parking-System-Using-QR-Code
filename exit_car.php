<?php
$response = array();
$car_number = $_GET['car_id'];
$email = $_GET['userid'];
$out_time = $_GET['outtime'];
$in_time = $_GET['intime'];
$hours = $_GET['hours'];

if ($email != null) {
    require_once __DIR__ . '/db_config.php';
    // Create connection
    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $result = mysqli_query($conn, "update car_details set nodeid='', slotid='',status_='',out_time='" . $out_time . "' where carnumber='" . $car_number . "' and userid='" . $email . "'") or die(mysqli_error());
    $result1 = mysqli_query($conn, "SELECT * FROM charges") or die(mysqli_error());
    if (mysqli_num_rows($result1) > 0) {
        while ($row = mysqli_fetch_array($result1)) {
            $charges = $row["charge"];
            $total = $hours * $charges;
            $result2 = mysqli_query($conn, "insert into payment_details values(0,'" . $email . "','" . $car_number . "','" . $in_time . "','" . $out_time . "','" . $hours . "','" . $total . "')") or die(mysqli_error());
        }
    }
    $response["success"] = 1;
    echo json_encode($response);
}
