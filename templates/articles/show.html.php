<h1><?= $article['title'] ?></h1>
<small>Ecrit le <?= $article['created_at'] ?></small>
<p><?= $article['introduction'] ?></p>
<hr>
<?= $article['content'] ?>

<?php if (count($commentaires) === 0) : ?>
    <h2>Il n'y a pas encore de commentaires, veuillez déposer un commentaire.</h2>
<?php else : ?>
    <h2>Il y a déjà <?= count($commentaires) ?> commentaires : </h2>
    <?php foreach ($commentaires as $commentaire) : ?>
        <h3>Message de <?= $commentaire['author'] ?></h3>
        <small>Le <?= $commentaire['created_at'] ?></small>
        <blockquote>
            <em><?= $commentaire['content'] ?></em>
        </blockquote>
        <a href="delete-comment.php?id=<?= $commentaire['id'] ?>" onclick="return window.confirm(`Voulez-vous supprimer ce commentaire ?`)">Supprimer</a>
    <?php endforeach ?>
<?php endif ?>

<form action="save-comment.php" method="POST">
    <h3>Exprimez-vous ici</h3>
    <input type="text" name="author" placeholder="Pseudo">
    <textarea name="content" id="" cols="30" rows="10" placeholder="Commentaire ..."></textarea>
    <input type="hidden" name="article_id" value="<?= $article_id ?>">
    <button>Valider</button>
</form>