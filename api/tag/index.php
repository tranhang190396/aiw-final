<?php

require '../../classes/Db.class.php';
require '../../misc/config.php';

$db = new Db($config);

if (isset($_GET['id'])) {
    $tagId = $_GET['id'];
    echo $db->toJSON($db->getTagById($tagId));
} else {
    echo $db->toJSON( $db->getTags() );
}