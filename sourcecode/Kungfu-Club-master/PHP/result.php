<html>
<head>
    <title>List of Students
    </title>
<link rel="stylesheet" href="./../css/table.css">
    
</head>
<body>
    


<h1>List of Entrolled Students</span></h1>
<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "kungfumaster");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt select query execution
$sql = "select * from student ";
  
if($result = mysqli_query($link, $sql))
{
    if(mysqli_num_rows($result) > 0)
    {
        echo "<table class=responstable>";
            echo "<tr>";
            
                echo "<th> Student Id</th>";
                echo "<th> Student Name</th>";
                echo "<th>Date Of Birth</th>";
                echo "<th>Joining Date</th>";
                echo "<th>Mobile Number</th>";
                echo "<th>Email Id</th>";
                echo "<th>Address</th>";
                         
            
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['ST_ID'] . "</td>";
                echo "<td>" . $row['ST_NAME'] . "</td>";
                echo "<td>" . $row['ST_DOB'] . "</td>";
                echo "<td>" . $row['ST_JOINDATE'] . "</td>";
                echo "<td>" . $row['ST_MOBILENO'] . "</td>";
                echo "<td>" . $row['EMAIL'] . "</td>";
                echo "<td>" . $row['ADRESS'] . "</td>";
               
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