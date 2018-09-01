<html>
<head>
    <title>Belt of Students
    </title>
<link rel="stylesheet" href="./../css/table.css">
    
</head>
<body>
    


<h1>Student Wise Belt</span></h1>
<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "kungfumaster");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt select query execution
$sql = "select s.ST_NAME, b.BLT_NAME from kungfumaster.student s 
inner join kungfumaster.rank r on s.ST_ID = r.ST_ID
inner join kungfumaster.belt_master b on b.BLT_ID = r.BLT_ID ";
  
if($result = mysqli_query($link, $sql))
{
    if(mysqli_num_rows($result) > 0)
    {
        echo "<table class=responstable>";
            echo "<tr>";
            
                echo "<th> Student first_name</th>";
                echo "<th> Student Belt</th>";
                              // echo "<th>mobnum</th>";
            
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['ST_NAME'] . "</td>";
                echo "<td>" . $row['BLT_NAME'] . "</td>";
                /*echo "<td>" . $row['name'] . "</td>";
                echo "<td>" . $row['email'] . "</td>";
                */
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