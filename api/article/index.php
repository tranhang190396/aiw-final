<?php

require '../../classes/Db.class.php';
require '../../misc/config.php';

$db = new Db($config);

if (isset($_GET['id'])) {
    $articleId = $_GET['id'];
    echo $db->toJSON($db->getArticleById($articleId));
}

if (isset($_GET['category'])) {
    $categoryId = $_GET['category'];
    echo $db->toJSON($db->getArticlesByCategory($categoryId));
}

if (isset($_GET['tag'])) {
    $tagId = $_GET['tag'];
    echo $db->toJSON($db->getArticlesByTag($tagId));
}

if (!isset($_GET['id']) && !isset($_GET['category']) && !isset($_GET['tag'])) {
    echo $db->toJSON($db->getArticles());
}