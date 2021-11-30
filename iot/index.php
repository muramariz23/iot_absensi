<?php 
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: ../login.php");
	exit;
}elseif (isset($_SESSION["login"])) {
	header("Location: ../iot/views/view_siswa.php");
	exit;
}


header("Location: ../iot/views/view_siswa.php");
?>