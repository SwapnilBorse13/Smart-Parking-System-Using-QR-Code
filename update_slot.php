<?php
$response = array();
$field1 = $_GET['field1'];
$field2 = $_GET['field2'];
$field3 = $_GET['field3'];

require_once __DIR__ . '/db_config.php';
// Create connection
$conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
if ($field1 > 0) {
    mysqli_query($conn, "update car_details set  status_='booked', nodeid='A',slotid='1' where carname='admin1'") or die(mysqli_error());

} else {
    mysqli_query($conn, "update car_details set status_='', nodeid='A',slotid='' where carname='admin1'") or die(mysqli_error());
}

if ($field2 > 0) {
    mysqli_query($conn, "update car_details set  status_='booked', nodeid='B',slotid='1' where carname='admin2'") or die(mysqli_error());

} else {
    mysqli_query($conn, "update car_details set status_='', nodeid='B',slotid='' where carname='admin2'") or die(mysqli_error());
}

if ($field3 > 0) {
    mysqli_query($conn, "update car_details set status_='booked', nodeid='C',slotid='1' where carname='admin3'") or die(mysqli_error());

} else {
    mysqli_query($conn, "update car_details set status_='', nodeid='C',slotid='' where carname='admin3'") or die(mysqli_error());
}
