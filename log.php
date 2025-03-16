<?php
require_once("head.php")
?>

<h1>Connexion</h2>
    <form action="connect.php" method="POST">
        login : <input type="login" id="login" name="login" required></br>
        password : <input type="password" id="login_password" name="password" required></br>
        <button type="submit">Se connecter</button>
    </form>


    <h1>Inscription</h1>
    <form action="signup.php" method="POST">
        Prénom : <input type="text" id="prenom" name="prenom" required></br>
        Nom : <input type="text" id="nom" name="nom" required></br>
        login : <input type="login" id="login" name="login" required></br>
        password : <input type="password" id="password" name="password" required></br>
        <button type="submit">S'inscrire</button>
    </form>


<?php
require_once("footer.php")
?>
