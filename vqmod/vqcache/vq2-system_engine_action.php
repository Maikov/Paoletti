<?php
final class Action {
	protected $file;
	protected $class;
	protected $method;
	protected $args = array();

	public function __construct($route, $args = array()) {
$left=substr($route,0,strpos($route,'/'));
$right=substr($route,strpos($route,'/')+1);
global $request;
if ($request->server['REQUEST_METHOD'] == 'POST')
if ( ($left=='feed')   or
     ($left=='total') or
     ($left=='module') or
     ($left=='payment') or
     ($left=='shipping') )
if (file_exists(DIR_APPLICATION . 'controller/'.$route.'.php')) {
global $db;
$query = $db->query("SELECT * FROM " . DB_PREFIX . "extension WHERE `type` = '" . $left . "' AND `code` = '" . $right . "'");
if (!$query->rows)
$query = $db->query("INSERT INTO " . DB_PREFIX . "extension SET `type` = '" . $left . "', `code` = '" . $right . "'");

}
 
		$path = '';
		
		$parts = explode('/', str_replace('../', '', (string)$route));
		
		foreach ($parts as $part) { 
			$path .= $part;
			
			if (is_dir(DIR_APPLICATION . 'controller/' . $path)) {
				$path .= '/';
				
				array_shift($parts);
				
				continue;
			}
			
			if (is_file(DIR_APPLICATION . 'controller/' . str_replace(array('../', '..\\', '..'), '', $path) . '.php')) {
				$this->file = DIR_APPLICATION . 'controller/' . str_replace(array('../', '..\\', '..'), '', $path) . '.php';
				
				$this->class = 'Controller' . preg_replace('/[^a-zA-Z0-9]/', '', $path);

				array_shift($parts);
				
				break;
			}
		}
		
		if ($args) {
			$this->args = $args;
		}
			
		$method = array_shift($parts);
				
		if ($method) {
			$this->method = $method;
		} else {
			$this->method = 'index';
		}
	}
	
	public function getFile() {
		return $this->file;
	}
	
	public function getClass() {
		return $this->class;
	}
	
	public function getMethod() {
		return $this->method;
	}
	
	public function getArgs() {
		return $this->args;
	}
}
?>