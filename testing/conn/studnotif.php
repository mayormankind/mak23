<?php
    $dept = $_POST['dept'];
    $level = $_POST['level'];
    include 'connection.php';
    $act = "SELECT * FROM notification WHERE level = '$level' AND dept ='$dept';";
    $query= mysqli_query($connection,$act);
    if(mysqli_num_rows($query) == 0){
        $msg ='<h3>No Notification from the admin</h3>';
    }
    else{
        $avail=mysqli_fetch_assoc($query);
        $msg = "<div class='msg'><h4>Notifications</h4><span class='close'>&times;</span>
            <h2>{$avail['heading']}</h2>
            <p>{$avail['msg_content']}</p>
            </div>";
    }
?>