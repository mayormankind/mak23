<?php
include_once 'conn/connection.php';

$id = $_POST['delete'];
$action = "DELETE * FROM courses WHERE course_code = '$id';";
$query = mysqli_query($connection, $action);
?>