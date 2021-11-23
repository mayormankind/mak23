<?php
    include 'connection.php';

    if(isset($_POST['send'])){
        $head = $_POST['head'];
        $dept = $_POST['dept'];
        $level = $_POST['level'];
        $txt = $_POST['txt'];

        $act = "INSERT INTO notification (heading,dept,level,msg_content) VALUES ('$head','$dept','$level','$txt');";
        mysqli_query($connection,$act);
        header("Location: notification.php?notificationsent=success");
    }
    
?>