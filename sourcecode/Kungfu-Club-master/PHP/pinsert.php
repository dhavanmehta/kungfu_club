<?php 
$sid = $_POST['st_id'];
$name = $_POST['name'];
$email = $_POST['email'];
$mobile = $_POST['mobile'];
$data = array("st_id" => $sid, "name" => "$name", "mobile" => $mobile,"email" => "$email");                                                                    
$data_string = json_encode($data);                                                                                   
                                                                                                                     
$ch = curl_init('127.0.0.1:8070/kungfu/parent/');                                                                      
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