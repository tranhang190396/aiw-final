<?php

require '../../classes/Db.class.php';
require '../../misc/config.php';

// return all categories
// id=?, return all book of a specific category based on category_id

$db = new Db($config);

if (!isset($_GET['id'])) {
    echo $db->toJSON($db->getCategories());
} 
else {
    $categoryId = $_GET['id'];
    echo $db->toJSON($db->getCategoryById($categoryId));
}