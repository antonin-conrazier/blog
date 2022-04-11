<h1>Mon Super Blog sur l'Argent</h1>

<?php foreach ($articles as $article) : ?>
    <h2><?= $article['title'] ?></h2>
    <small>Ecrit le <?= $article['created_at'] ?></small>
    <p><?= $article['introduction'] ?></p>
    <a href="article.php?id=<?= $article['id'] ?>">Voir l'article</a>
    <a href="delete-article.php?id=<?= $article['id'] ?>" onclick="return window.confirm(`Voulez-vous supprimer ce commentaire ?`)">Supprimer</a>
<?php endforeach ?>