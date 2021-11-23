<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>preview</title>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/preview.css">
</head>
<body>
    <div class="header">
        <h2 id="logo"><span>f</span>cah&pt <span>t</span>tms</h2>
        <span id="span">           
            <button onclick="window.print();">PRINT</button>
            <a href="index.php">LOGOUT</a></li>
        </span>
    </div>
    <div class="print" id = "print">
    <div class = "for">
        <?php
            include 'conn/connection.php';

            if (isset($_POST['dept']) && isset($_POST['level'])) {
                if ($_POST['dept']=='comp') {
                    $dept= "Computer Science Department";
                }
                elseif ($_POST['dept']=='stat') {
                    $dept= "Statistics Department";
                }elseif ($_POST['dept']=='ahpt') {
                    $dept= "Animal Health And Production Technology";
                }elseif ($_POST['dept']=='ah') {
                    $dept= "Animal Health";
                }elseif ($_POST['dept']=='ap') {
                    $dept= "Animal Production";
                }elseif ($_POST['dept']=='slt') {
                    $dept= "Science And Laboratory Technology";
                }elseif ($_POST['dept']=='vlt') {
                    $dept= "Veterinary Laboratory Technology";
                }elseif ($_POST['dept']=='ae') {
                    $dept= "Agricultural Extention";
                }elseif ($_POST['dept']=='fish') {
                    $dept= "Fisheries Department";
                }
                $tt =  "<h1>Timetable for". " " .$dept. " " .$_POST['level']. " ";
                echo "<div class= 'main' style ='text-align:center'><h1>$tt</h1></div>";
            }
        ?>
    </div>
    
    <?php
        
        if (isset($_POST['get_timetable'])) {
            $dept = $_POST['dept'];
            $level = $_POST['level'];
            $days = array('MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY','SATURDAY');
            $day = -1;
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='1' ";
            $fff = mysqli_query($connection,$f);
            $all_monday=mysqli_fetch_all($fff);
            array_unshift($all_monday,"MONDAY");
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='2' ";
            $fff = mysqli_query($connection,$f);
            $all_tue=mysqli_fetch_all($fff);
            array_unshift($all_tue,"TUESDAY");
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='3' ";
            $fff = mysqli_query($connection,$f);
            $all_wed=mysqli_fetch_all($fff);
            array_unshift($all_wed,"WEDNESDAY");
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='4' ";
            $fff = mysqli_query($connection,$f);
            $all_thur=mysqli_fetch_all($fff);
            array_unshift($all_thur,"THURSDAY");
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='5' ";
            $fff = mysqli_query($connection,$f);
            $all_fri=mysqli_fetch_all($fff);
            array_unshift($all_fri,"FRIDAY");
           $all_courses=[];
           array_push($all_courses,$all_monday);
           array_push($all_courses,$all_tue);
           array_push($all_courses,$all_wed);
           array_push($all_courses,$all_thur);
           array_push($all_courses,$all_fri);
           
           $table_courses='';
           $tue='';
           $wed='';
           $thur = '';
           $fri = '';

              for($i=0;$i<count($all_monday);$i++){
                  if($i>0){
                          $table_courses.="
               
                <td><span>".$all_monday[$i][2]."</span><br>
                    <span>".$all_monday[$i][1]."</span><br>
                    <span>".$all_monday[$i][6]."</span><br>
                    <span>".$all_monday[$i][7].":00"."-".$all_monday[$i][8].":00"."</span><br></td>
            
               ";
                  }
            
              }
              for($i=0;$i<count($all_tue);$i++){
                  if($i>0){
                          $tue.="
               
                <td><span>".$all_tue[$i][2]."</span><br>
                    <span>".$all_tue[$i][1]."</span><br>
                    <span>".$all_tue[$i][6]."</span><br>
                    <span>".$all_tue[$i][7].":00"."-".$all_tue[$i][8].":00"."</span><br></td>
            
               ";
                  }
            
              }
              for($i=0;$i<count($all_wed);$i++){
                  if($i>0){
                          $wed.="
               
                <td><span>".$all_wed[$i][2]."</span><br>
                    <span>".$all_wed[$i][1]."</span><br>
                    <span>".$all_wed[$i][6]."</span><br>
                    <span>".$all_wed[$i][7].":00"."-".$all_wed[$i][8].":00"."</span><br></td>
            
               ";
                  }
            
              }
              for($i=0;$i<count($all_thur);$i++){
                  if($i>0){
                          $thur.="
               
                <td><span>".$all_thur[$i][2]."</span><br>
                    <span>".$all_thur[$i][1]."</span><br>
                    <span>".$all_thur[$i][6]."</span><br>
                    <span>".$all_thur[$i][7].":00"."-".$all_thur[$i][8].":00"."</span><br></td>
            
               ";
                  }
            
              }
              for($i=0;$i<count($all_fri);$i++){
                  if($i>0){
                          $fri.="
               
                <td><span>".$all_fri[$i][2]."</span><br>
                    <span>".$all_fri[$i][1]."</span><br>
                    <span>".$all_fri[$i][6]."</span><br>
                    <span>".$all_fri[$i][7].":00"."-".$all_fri[$i][8].":00"."</span><br></td>
            
               ";
                  }            
              }
           
        }     
    ?><div class="tt">
        <table class="table">
            <tr>
                <th width= "100">Weekdays</th>
                <th width= "150">Course1</th>
                <th width= "150">Course2</th>
                <th width= "150">Course3</th>
                <th width= "150">Course4</th>
            </tr>
            <tr>
                <td>MONDAY</td>
                <?php echo $table_courses ?>
            </tr>
            <tr>
                <td>TUESDAY</td>
                <?php echo $tue ?>
            </tr>
            <tr>
                <td>WEDNESDAY</td>
                <?php echo $wed ?>
            </tr>
            <tr>
                <td>THURSDAY</td>
                <?php echo $thur ?>
            </tr>
            <tr>
                <td>FRIDAY</td>
                <?php echo $fri ?>
            </tr>
           
    </div>
    </div>
    <style>
    table {
    margin: auto;
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 97%;
 }

td {
    border: 2px solid black;
    text-align: center;
    padding: 8px;
}
th{
    border: 2px solid black;
    text-align: center;
    padding: 8px;
}
</style>
<script>
    function print() {
        let print = document.getElementById("print");
            window.print;
    }
</script>
</body>
</html>