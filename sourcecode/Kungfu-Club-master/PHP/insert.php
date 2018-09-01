<?php

 	  $sid = 10;
        $name =$_POST['fname'];
        $dob = $_POST['DOB'];
        $joinDate =  $_POST['Date'];
        $mobilnoe =  $_POST['mobileno'];
        $email =  $_POST['emailid'];
        $address =  $_POST['address'];
	
$data = array("id" => $sid,"name" => "$name","dob" => "$dob","joinDate" => "$joinDate","mobile" => $mobilnoe,"email" => "$email","address" => "$address");                                                                    
$data_string = json_encode($data);                                                                                   
                                                                                                                     
$ch = curl_init('127.0.0.1:8070/kungfu/student/');                                                                      
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");                                                                     
curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);                                                                  
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);                                                                      
curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
    'Content-Type: application/json',                                                                                
    'Content-Length: ' . strlen($data_string))                                                                       
);                                                                                                                   
                                                                                                                     
$result = curl_exec($ch);
header('Location:../index.html');


?>