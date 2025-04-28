<?php
error_reporting(0);
include("flag.php");
highlight_file(__FILE__);
class a{
	var $act;
	function action(){
		eval($this->act);
	}
}
$a=unserialize($_GET['flag']);
$a->action();
?>