<?php

   $studentId  = $_POST['SID'];
        $beltType = $_POST['bid'];;
      
    $data = array("studentId"=> $studentId,
        "beltType"=> $beltType);                                                                    
$data_string = json_encode($data);                                                                                   
                                                                                                                     
$ch = curl_init('127.0.0.1:8070/kungfu/rank/');                                                                      
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");                                                                     
curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);                                                                  
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);                                                                      
curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
    'Content-Type: application/json',                                                                                
    'Content-Length: ' . strlen($data_string))                                                                       
);                                                                                                                   
                                                                                                                     
$result = curl_exec($ch);
//header('Location:../index.html');
echo "$result";

// Create connection
/*$con = mysqli_connect('localhost', 'root', '','kungfu');

	if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


	$SID= $_POST['SID'];
	$rank= $_POST['Rank'];
	
	

	

	$sql ='INSERT INTO rank VALUES ("'.$SID.'","'.$rank.'")';

	
	if(!mysqli_query($con, $sql))
	{
		echo'Not inserted ' .mysqli_error($con);
	
	}
	else
	{
		echo'Inserted';
	}
	header("refresh:0.02; url=index.html");
*/

?>