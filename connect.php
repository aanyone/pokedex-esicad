<?php
require_once("database-connection.php");


$sql = "SELECT * FROM user WHERE login = '" . $_POST["login"] . "'";
$res = $databaseConnection->query($sql)->fetch_all();
if(password_verify($_POST["password"], $res[0][3])) 
{
	session_start();
	$_SESSION['connected'] = $res;
}
header('Location:index.php');
exit;
