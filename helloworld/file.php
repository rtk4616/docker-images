<?php

if (isset($_GET['clicked'])) {
    file_put_contents('storage/time.txt', date('Y-m-d H:i:s'));
    header('Location: index.php');
}

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
    <body>
        <center>
            <p>
                <h3>Dernière requête : <?php echo date(@file_get_contents('storage/time.txt')); ?></h3>
            </p>
            <p>
                <a href="/index.php?clicked">Enregistrer l'heure</a>
            </p>
        </center>
    </body>
</html>
