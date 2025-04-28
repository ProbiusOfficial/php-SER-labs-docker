<?php
    class secret{
        public $file='index.php';
        public function __construct($file){
            $this->file = $file;
        }

        public function __destruct(){
            include($this->file);
			if($flag != null){
                echo "<br>flag: ".$flag;
            }else{
                echo "sorry, flag not found";
            }
        }

        public function __wakeup(){
            $this->file='fakeflag.php';
        }
    }
	$cmd=$_GET['cmd'];

    if (!isset($cmd)) echo show_source(__FILE__);
    else {
        if (preg_match('/[oc]:\d+:/i',$cmd)){
            echo "Are you daydreaming?";
        }
        else{
            unserialize($cmd);
        }
    }
	//secret in flag.php
?>