<?php
try {
  $bdd = new PDO ('mysql:host=localhost;dbname=f1', 'root', 'root');
} catch(PDOException $e) {
  echo 'Erreur : ' , $e->getMessage();
}

$response = $bdd->prepare('SELECT * FROM driver WHERE lastname LIKE :lastname OR firstname LIKE :firstname OR team LIKE :team ORDER BY id ASC');
$response->execute([
  'lastname' => '%' . $_GET['search'] . '%',
  'firstname' => '%' . $_GET['search'] . '%',
  'team' => '%' . $_GET['search'] . '%'
]);

$response = $response->fetchAll();

echo json_encode($response);
