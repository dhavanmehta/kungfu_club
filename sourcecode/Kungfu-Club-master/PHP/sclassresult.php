<html>
<head>
    <title>Attendace
    </title>
<link rel="stylesheet" href="./../css/table.css">
    
</head>
<body>
    


<h1>Attendance</span></h1>
<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "kungfumaster");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 $sql = "SELECT * FROM kungfumaster.student S
INNER JOIN kungfumaster.attendance A ON S.ST_ID = A.STU_ID
INNER JOIN kungfumaster.class C ON C.CL_ID = A.CLS_SLOT
INNER JOIN kungfumaster.class_schedule CS ON C.CL_ID = CS.CLS_TYPE_ID 
INNER JOIN kungfumaster.day_master DM ON DM.DAY_ID = CS.CL_DAY";
// Attempt select query execution
/*$sql = "SELECT * FROM kungfumaster.student S
INNER JOIN kungfumaster.attendance A ON S.ST_ID = A.STU_ID
INNER JOIN kungfumaster.class C ON C.CL_ID = A.CLS_SLOT
INNER JOIN kungfumaster.class_schedule CS ON C.CL_ID = CS.CLS_TYPE_ID"; 
*/
  
if($result = mysqli_query($link, $sql))
{
    if(mysqli_num_rows($result) > 0)
    {
        echo "<table class=responstable>";
            echo "<tr>";
            
                echo "<th> Student Id</th>";
                echo "<th> Student Name</th>";
                echo "<th>Date</th>";
                echo "<th>Class Slot</th>";
                echo "<th>Class Type</th>";
                echo "<th>Day</th>";
             
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                  echo "<td>" . $row['STU_ID'] . "</td>";
                  echo "<td>" . $row['ST_NAME'] . "</td>";
                  echo "<td>" . $row['AT_DATE'] . "</td>";
                echo "<td>" . $row['CLS_TIME'] . "</td>";
                echo "<td>" . $row['CL_TYPE'] . "</td>";
                 echo "<td>" . $row['DAY_NAME'] . "</td>";
                 
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else
    {
        echo "No records matching your query were found.";
    }
} else
{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
</body>
</html>