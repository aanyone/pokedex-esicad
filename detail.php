<?php
require_once("head.php");
?>


<?php
require_once("database-connection.php");
$requete = "SELECT p.IdPokemon, p.nom, p.UrlPhoto, p.PV, p.PtsAttaque, p.PtsDefense, p.PtsSpeciale, p.PtsVitesse, t1.nomtype AS type1 ,t2.nomtype AS type2,e.idEvolution, a.idAncetre,

p2.IdPokemon AS p21, p2.nom AS p22, p2.UrlPhoto AS p23, p2.PV AS p24, p2.PtsAttaque AS p25, p2.PtsDefense AS p26, p2.PtsSpeciale AS p27, p2.PtsVitesse AS p28, t1.nomtype AS p2t1 ,t2.nomtype AS p2t2, 

p3.IdPokemon AS p31, p3.nom AS p32, p3.UrlPhoto AS p33, p3.PV AS p34, p3.PtsAttaque AS p35, p3.PtsDefense AS p36, p3.PtsSpeciale AS p37, p3.PtsVitesse AS p38, t1.nomtype AS p3t1 ,t2.nomtype AS p3t2

FROM pokemon AS p
LEFT JOIN evolutions AS e ON e.idAncetre = p.IdPokemon
LEFT JOIN pokemon AS p2 ON e.idEvolution = p2.IdPokemon
LEFT JOIN evolutions AS a ON a.idEvolution = p.IdPokemon
LEFT JOIN pokemon AS p3 ON a.idAncetre = p3.IdPokemon
join types AS t1 on t1.IdType=p.idType1 
LEFT join types AS t2 on t2.IdType=p.idType2
WHERE p.IdPokemon =" . $_GET["id"]; 

$result = mysqli_query($databaseConnection,$requete); 


if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){ 


        if($row['idAncetre'] != NULL){
            echo "<table><thead><tr><th>ID</th><th>Nom</th><th>Img</th><th>PV</th><th>Point Atk</th><th>Point Def</th><th>Point Vit</th><th>Point Spe</th><th>Type 1</th><th>Type 2</th></tr></thead><tbody>";
            echo "<tr>"."<td>".$row["p31"]."</td>"."<td>"."<a href=\"detail.php?id=" . $row['idAncetre'] . "\">".$row["p32"]."</a>"."</td>"."<td>"."<img src=".$row["p33"].">"."</td>"."<td>" . 
            $row["p34"]."</td>"."<td>".$row["p35"]."</td>"."<td>".$row["p36"]."</td>"."<td>".$row["p37"]."</td>"."<td>".$row["p38"]."</td>"."<td>".
            $row["p3t1"]."</td>"."<td>".$row["p3t2"]."</td>"."<td>"."</tr>"."</tbody>"."</table>";
        }

        else { 
            echo "<h2>Pas d'Ancetre</h2>";
            echo " ";
        }

        
        echo "<table><thead><tr><th>ID</th><th>Nom</th><th>Img</th><th>PV</th><th>Point Atk</th><th>Point Def</th><th>Point Vit</th><th>Point Spe</th><th>Type 1</th><th>Type 2</th></tr></thead><tbody>";
        echo "<tr>"."<td>".$row["IdPokemon"]."</td>"."<td>"."<a href=\"detail.php?id=" . $row['IdPokemon'] . "\">".$row["nom"]."</a>"."</td>"."<td>"."<img src=".$row["UrlPhoto"].">"."</td>"."<td>" . 
        $row["PV"]."</td>"."<td>".$row["PtsAttaque"]."</td>"."<td>".$row["PtsDefense"]."</td>"."<td>".$row["PtsSpeciale"]."</td>"."<td>".$row["PtsVitesse"]."</td>".      "<td>".
        $row["type1"]."</td>"."<td>".$row["type2"]."</td>"."<td>"."</tr>";

          
        echo " ";
        if($row['idEvolution'] != NULL){
            echo "<table><thead><tr><th>ID</th><th>Nom</th><th>Img</th><th>PV</th><th>Point Atk</th><th>Point Def</th><th>Point Vit</th><th>Point Spe</th><th>Type 1</th><th>Type 2</th></tr></thead><tbody>";
            echo "<tr>"."<td>".$row["p21"]."</td>"."<td>"."<a href=\"detail.php?id=" . $row['idEvolution'] . "\">".$row["p22"]."</a>"."</td>"."<td>"."<img src=".$row["p23"].">"."</td>"."<td>" . 
            $row["p24"]."</td>"."<td>".$row["p25"]."</td>"."<td>".$row["p26"]."</td>"."<td>".$row["p27"]."</td>"."<td>".$row["p28"]."</td>"."<td>".
            $row["p2t1"]."</td>"."<td>".$row["p2t2"]."</td>"."<td>"."</tr>"."</tbody>"."</table>";
        }

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