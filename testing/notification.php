<?php
    include "./conn/notiflg.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>Document</title>
   <link rel="stylesheet" href="css/notif.css">
   <link rel="stylesheet" href="css/admin.css">
</head>
<body>
    <div class="house">
    <div class="main">
        <div class="notif">
            <h3>Notification Box</h3>
        </div>
        <div class="content">
            <form action="notification.php" method="POST">
                <label for="For">Heading</label><br>
                <input type="text" name="head" id=""><br>
                <label for="For">Department</label><br>
                <select name="dept" id="">
                    <option selected disabled>select Department</option>
                    <option value="comp">Computer Science</option>
                    <option value="stat">Statistics</option>
                    <option value="ahpt">Animal Health and Production Tech</option>
                    <option value="vlt">Vetinary Laboratory Technology</option>
                    <option value="slt">Science Laboratory Technology</option>
                    <option value="fish">Fisheries Technology</option>
                    <option value="ah">Animal Health (HND)</option>
                    <option value="ap">Animal Production (HND)</option>
                    <option value="ae">Agricultural Extension and Management (HND)</option>
                </select> <br>
                <label for="For">Level</label><br>
                <select name="level" id="">
                    <option selected disabled>select level</option>
                    <option value="ND1">ND1</option>
                    <option value="ND2">ND2</option>
                    <option value="HND1">HND1</option>
                    <option value="HND2">HND2</option>
                </select> <br>
                <label for="For">Notification body</label><br>
                <textarea name="txt" id="" cols="30" rows="10" placeholder="notification's content"></textarea><br>
                <input type="reset" class="but" value="Reset">
                <input type="submit" class="but" value="Send" name="send">
            </form>
        </div>
    </div>
</div>
</body>
</html>