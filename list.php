<!-- 
    Ce fichier représente la page de liste de tous les pokémons.
-->
<?php
require_once("head.php");
?>
<table>
    <thead>
        <tr>
            <th>
            ID
            </th>
            <th>
            Nom 
            </th>
            <th>
            Img
            </th>
            <th>
            Type1
            </th>
            <th>
            Type2
            </th>
        </tr>
    </thead>
    <tbody>
<?php
require_once("database-connection.php");
$result = mysqli_query($databaseConnection, "SELECT *,p1.nomtype AS nomtype1 ,p2.nomtype AS nomtype2 FROM pokemon join types AS p1 on p1.idType=pokemon.idType1 LEFT join types AS p2 on p2.idType=pokemon.idType2 ORDER BY IdPokemon ASC");

if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
        echo "<tr>" . "<td>" . $row['IdPokemon'] . "</td>" . "<td>" . "<img src=" . $row["UrlPhoto"] . ">" . "</td>" . "<td>" . "<a href=\"detail.php?id=" . $row['IdPokemon'] . "\">" . $row["nom"] . "</a>"  . "</a>" . "</td>" . "<td>" . $row["nomtype1"] . "</td>" . "<td>" . $row["nomtype2"] . "</td>" . "</tr>" ;

    }
}

else{
    echo "0 results";
}

?>

</tbody>
</table>

<?php
require_once("footer.php");
?>