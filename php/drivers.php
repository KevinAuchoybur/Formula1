<?php
try {
  $bdd = new PDO ('mysql:host=localhost;dbname=f1', 'root', 'root');
} catch(PDOException $e) {
  echo 'Erreur : ' , $e->getMessage();
}

$response = $bdd->query('SELECT * FROM driver ORDER BY id ASC LIMIT 0,3');

$response = $response->fetchAll();

echo json_encode($response);
