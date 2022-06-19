<?php
$hostname = 'localhost';
$username = 'root';
$password = '';
$dbname = 'db_warungkita';

$conn = mysqli_connect($hostname, $username, $password, $dbname);
 if (!$conn){
     echo "Gagal terhubung ke database";
 }