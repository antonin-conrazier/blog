<?php

/**
 * DANS CE FICHIER, ON CHERCHE A SUPPRIMER L'ARTICLE DONT L'ID EST PASSE EN GET
 * 
 * Il va donc falloir bien s'assurer qu'un paramètre "id" est bien passé en GET, puis que cet article existe bel et bien
 * Ensuite, on va pouvoir effectivement supprimer l'article et rediriger vers la page d'accueil
 */
require_once('footer.php');
require_once('header.php');
require_once('inscription.php');

$model = new Article();

/**
 * 1. On vérifie que le GET possède bien un paramètre "id" (delete.php?id=202) et que c'est bien un nombre
 */
if (empty($_GET['id']) || !ctype_digit($_GET['id'])) {
    die("Ho ?! Tu n'as pas précisé l'id de l'article !");
}

$id = $_GET['id'];

/**
 * 2. Connexion à la base de données avec PDO
 * Attention, on précise ici deux options :
 * - Le mode d'erreur : le mode exception permet à PDO de nous prévenir violament quand on fait une connerie ;-)
 * - Le mode d'exploitation : FETCH_ASSOC veut dire qu'on exploitera les données sous la forme de tableaux associatifs
 * 
 * PS : Vous remarquez que ce sont les mêmes lignes que pour l'index.php ?!
 */
$pdo = getPdo();

/**
 * 3. Vérification que l'article existe bel et bien
 */
// $query = $pdo->prepare('SELECT * FROM articles WHERE id = :id');
// $query->execute(['id' => $id]);
$article = $model->find($id);
if (!article) {
    die("L'article $id n'existe pas, vous ne pouvez donc pas le supprimer !");
}

/**
 * 4. Réelle suppression de l'article
 */
$model->delete($id);
/**
 * 5. Redirection vers la page d'accueil
 */
redirect('index.php');
