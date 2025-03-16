<?php
/*
Ce fichier permet de définir un objet de connexion $databaseConnection 
que vous pouvez utiliser dans chaque page qui nécessite de faire une requête au SGBD
Il suffit d'utiliser l'instruction require_once("database_connection.php") 
pour que la variable $databaseConnection soit utilisable dans votre page
*/
global $databaseConnection;

/* A COMPLETER : remplacer les paramètres pour se connecter à votre base de données de pokémon 
$databaseConnection = mysqli_connect(
    'URL de la machine hébergeant votre base de données',
    "nom de l'utilisateur",
    "mot de passe de l'utilisateur",
    "nom de la base de données à laquelle se connecter",
    "numéro de port ouvert"
);
*/

$databaseConnection = mysqli_connect(
    'localhost',
    "root",
    "",
    "pokedex",
    "3306"
);
?>
<!--

    if ($result = mysqli_query($databaseConnection, "SELECT * FROM pokemon")) {

  // Seek to row number 15
  mysqli_data_seek($result,14);

  // Fetch row
  $row=mysqli_fetch_row($result);

  printf ("ID: %s <br>URL: %s<br>Nom: %s<br>PV: %s<br>PtsAttaque: %s<br>PtsDefense: %s<br>PtsSpecial: %s<br>PtsVitesse: %s<br>idType1: %s\r<br>idType2: %s", $row[0], $row[1], $row[2], $row[3], $row[4], $row[5], $row[6], $row[7], $row[8], $row[9]);

  // Free result set
  mysqli_free_result($result);
}
-->