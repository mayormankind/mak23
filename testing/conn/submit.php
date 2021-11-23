<?php
include_once 'connection.php';
$cc = $_POST['cc'];
$ct = $_POST['ct'];
$dept = $_POST['dept'];
$level = $_POST['level'];
$day = $_POST['day'];
$venue = $_POST['venue'];
$st = $_POST['st'];
$et = $_POST['et'];

$mak = "INSERT INTO courses (course_code, course_title, dept, level, day, venue, start, end) VALUES ('$cc', '$ct', '$dept', '$level', '$day', '$venue', '$st', '$et');";
mysqli_query($connection, $mak);
header("Location: ../admin.php?yaff_mad_danu_danu");
?>