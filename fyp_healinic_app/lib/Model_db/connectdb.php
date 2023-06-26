<?php 

$dns = 'mysql:host=https://healininc.000webhostapp.com/; dbname=id18049962_healinic';
$user = 'syahfiqa';
$pass = 'Nsn@BI18110244';

try{
    $db = new PDO($dns, $user, $pass);
    echo 'connected';
    
}
catch(PDOException $e){
    $error = $e-> getMessage();
    echo $error;
}

echo json_encode($row);


?>