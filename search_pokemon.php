<!-- 
    Ce fichier représente la page de résultats de recherche de pokémons du site.
-->
<?php
require_once("head.php");
?>

<?php

require_once("database-connection.php");
$sql = "SELECT * FROM pokemon WHERE nom LIKE '%".$_GET["q"]."%'";
$res = $databaseConnection->query($sql)->fetch_all(MYSQLI_ASSOC);
foreach ($res as $row){
    echo "<table>" . "<tr>" . "<th>" . "<img src=" . $row["UrlPhoto"] . ">" . "</th>" . "<th>" . $row["nom"] . "</a>" . "</th>" . "</tr>" . "</table>";

}
?>

<?php
require_once("footer.php");
?>