<?php
    include 'conn/adloglg.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/adminlogin.css">
    <link rel="stylesheet" href="css/remix-icon/remixicon.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/fonts/font-awesome.min.css">
</head>
<body>
    <div class="father">
            <header>
                <h2>Admin Login page</h2>
            </header>
        <div class="form">
            <form action="adminlogin.php" method="post">
                <i class="ri-user-3-line"></i> <input type="text" name="user" id="" placeholder="USERNAME">
                <i class="ri-key-2-line"></i> <input type="password" name="pass" id="" placeholder="PASSWORD">
                <button type="submit" class="submit" name="submit">Login</button>
            </form>
        </div>
        <footer>
            <h5>&copy; FCAHPT 2021</h5>
        </footer>
    </div>
</body>
</html>