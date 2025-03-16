<?php
require_once("database-connection.php");



$sql = "SELECT * FROM user WHERE login = '" . $_POST["login"] . "'";
$res = $databaseConnection->query($sql)->fetch_all(MYSQLI_ASSOC);

if($res==NULL)
{
	$password = password_hash($_POST["password"], PASSWORD_DEFAULT);

	$requete = "INSERT INTO user (prenom, nom,login,password) VALUES ('" . $_POST['prenom'] . "', '" .  $_POST['nom'] . "', '". $_POST['login'] . "', '"  .  $password .  "')";

	$inscription = mysqli_query($databaseConnection, $requete);
}
else
{
	header('Location:log.php');
}


header('Location:index.php');
exit;


