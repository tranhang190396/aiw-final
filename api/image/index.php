<?php

require '../../classes/Db.class.php';
require '../../misc/config.php';

$db = new Db($config);

if (isset($_GET['id'])) {
    $imageId = $_GET['id'];
    echo $db->toJSON($db->getImageById($imageId));
}

if (isset($_GET['article'])) {
    $articleId = $_GET['article'];
    echo $db->toJSON($db->getImagesByArticleId($articleId));
}

if (!isset($_GET['id']) && !isset($_GET['article'])) {
    echo $db->toJSON($db->getImages());
}