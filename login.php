<?php
$response = array();
$email = $_GET['email'];
$pass = $_GET['pass'];
if ($email != null && $pass != null) {

    require_once __DIR__ . '/db_config.php';
    // Create connection
    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $result = mysqli_query($conn, "SELECT * FROM user_details where email = '" . $email . "' and password = '" . $pass . "'") or die(mysqli_error());
    if (mysqli_num_rows($result) > 0) {
        $response["Car"] = array();

        while ($row = mysqli_fetch_array($result)) {
            // temp user array
            $product = array();
            $product["Name"] = $row["full_name"];
            array_push($response["Car"], $product);
        }
        $response["success"] = 1;
        echo json_encode($response);
    } else {
        $response["failed"] = 0;
        echo json_encode($response);
    }
}
