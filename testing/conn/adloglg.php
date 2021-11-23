<?php
    include 'connection.php';

    if (isset($_POST['submit'])){
        $user = mysqli_real_escape_string($connection,$_POST['user']);
        $pass = mysqli_real_escape_string($connection,$_POST['pass']);

        $mot = "SELECT * FROM login WHERE username = '$user' AND password = '$pass';";
        $retrieve = mysqli_query($connection,$mot);

        $data = mysqli_num_rows($retrieve);

        if($data == 0){
            header("Location: adminlogin.php?submit=invalidusername/password");
            echo `<script>
                alert("invalid username or password");
            </script>`;
        }
        else{
            header("Location: admin.php");

        }
    }

?>