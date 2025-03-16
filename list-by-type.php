<!-- 
    Ce fichier représente la page de liste par type de pokémon du site.
-->
<?php
require_once("head.php");
?>


<?php
require_once("database-connection.php");
$result = mysqli_query($databaseConnection, "SELECT  p.*,types.nomtype,types.idType FROM pokemon p JOIN types on idType1 = types.idType or idType2 = types.idType ORDER BY types.idType,p.IdPokemon");

$ancient_types = 0;
if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
        if ($ancient_types < $row["idType"]-'0')
        {
               echo "</tbody></table>";

               $ancient_types = $row["idType"]-'0';

               echo "<h1>" .$row["nomtype"]. "</h1>";

               echo "<table><thead><tr><th>ID</th><th>Img</th><th>NOM</th></tr></thead><tbody>";
        }
        echo "<tr>" . "<td>" . $row["IdPokemon"] . "</td>" . "<td>" . "<img src=" . $row["UrlPhoto"] . ">" . "</td>" . "<td>" . "<a href=\"detail.php?id=" . $row['IdPokemon'] . "\">" . $row["nom"] . "</a>" . "</td>" . "</tr>" ;
    }
}
else{echo "0 results";}
?>

</tbody>
</table>



<?php
require_once("footer.php");
?>