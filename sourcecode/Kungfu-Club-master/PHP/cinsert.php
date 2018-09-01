<?php
	    $classSlot =$_POST['time'];
	    $classType =$_POST['type'];
	    $date   = $_POST['date'];
 		$studentId  = $_POST['SID'];
            
$data = array("studentId" => $studentId,"classSlot" => $classSlot, "classType" => $classType,"date" => $date);                                                                    
$data_string = json_encode($data);                                                                                   
                                                                                                                     
$ch = curl_init('127.0.0.1:8070/kungfu/attendance/');                                                                      
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");                                                                     
curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);                                                                  
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);                                                                      
curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
    'Content-Type: application/json',                                                                                
    'Content-Length: ' . strlen($data_string))                                                                       
);                                                                                                                   
                                                                                                                     
$result = curl_exec($ch);
echo $result;

?>