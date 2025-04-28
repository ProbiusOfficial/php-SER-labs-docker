<?php
$file_path = "/flag";
if (file_exists($file_path)) {
    $flag = file_get_contents($file_path);
}
else{
    $flag = "HelloCTF{Default_Flag}";
}
$user=$_SERVER['HTTP_USER_AGENT'];
$pass = $_POST['pass'];
if(isset($pass) and isset($user)){
	if($pass=='password' and $user=='admin'){
		file_put_contents('flag.txt',$flag);
	}	
}
?>