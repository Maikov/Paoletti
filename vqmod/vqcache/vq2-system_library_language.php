<?php
class Language {
	private $default = 'english';
	private $directory;
	private $data = array();
 
	public function __construct($directory) {
		$this->directory = $directory;

            // Load OpenShop localization strings
            $_ = array();
            $os_def = DIR_LANGUAGE . 'english/openshop.php';
            if (file_exists($os_def)) require($os_def);
            $os_cur = DIR_LANGUAGE . $this->directory . '/openshop.php';
            if ($os_def != $os_cur)
                if (file_exists($os_cur)) require($os_cur);
            global $os;
            $os= $_;
            
	}
	
  	public function get($key) {
   		return (isset($this->data[$key]) ? $this->data[$key] : $key);
  	}
	
	public function load($filename) {

//MXS
        $_ = array();
        global $vqmod;
        $file = DIR_LANGUAGE . 'english/' . $filename . '.php';
        if (file_exists($file)) require($vqmod->modCheck($file));
        $file2 = DIR_LANGUAGE . $this->directory . '/' . $filename . '.php';
	if ($file != $file2)
        	if (file_exists($file2)) require($vqmod->modCheck($file2));
	$this->data = array_merge($this->data, $_);
        return $this->data;
        //MXE

		$file = DIR_LANGUAGE . $this->directory . '/' . $filename . '.php';
    	
		if (file_exists($file)) {
			$_ = array();
	  		
			global $vqmod;
			require($vqmod->modCheck($file));
		
			$this->data = array_merge($this->data, $_);
			
			return $this->data;
		}
		
		$file = DIR_LANGUAGE . $this->default . '/' . $filename . '.php';
		
		if (file_exists($file)) {
			$_ = array();
	  		
			global $vqmod;
			require($vqmod->modCheck($file));
		
			$this->data = array_merge($this->data, $_);
			
			return $this->data;
		} else {
			trigger_error('Error: Could not load language ' . $filename . '!');
			exit();
		}
  	}
}
?>