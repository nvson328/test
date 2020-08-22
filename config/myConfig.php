<?php 
	class Connect{
		private $conn = 'mysql:host=localhost;dbname=db_restaurant';
		private $user = 'root';
		private $passw = '';
		protected $pdo = null;

		function __construct(){
			try {
				$this->pdo = new PDO($this->conn, $this->user, $this->passw);
				$this->pdo->query("SET NAMES utf8");
			} catch (PDOException $e){
				exit();
			}
		}
	}
	
 ?>