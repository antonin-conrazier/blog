<?php

function getPdo(): PDO {
    $pdo = new PDO('mysql:host=localhost;dbname=blog;charset=utf8', 'root', '', [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);

    return $pdo;

}
/**
 * Retourne la liste des articles classés par date de création
 * 
 * @return array 
 */

