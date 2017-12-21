<?php

/**
 *  This class is an abstract layer between application and database
 *  It holds all the sql logic as well as supported method to convert
 *  result set into json string, which serves for the purpose of 
 *  buidling a REST api.
 *  This is the only middle layer of the application, database tables
 *  are not modelized.
 * 
 *  @attr: 
 *      $pdo: an instance of PDO class
 *  @deps:
 *      $config is provided in /misc/config.php
 */
class Db
{

    private $pdo;

    public function __construct( $config )
    {
        $this->pdo = new PDO('mysql:host=localhost;dbname='.$config['dbname'].';charset=utf8mb4', 
                            $config['user'], $config['pwd']);
    }

    /**
     *  Retrieve all categories
     *  @return: PDOStatement
     */
    public function getCategories()
    {
        return $this->runSql('select * from categories'); 
    }
    
    /**
     *  Retrieve all articles
     *  @return: PDOStatement
     */
    public function getArticles()
    {
        return $this->runSql('select * from articles');
    }

    /**
     *  Retrieve all tags
     *  @return: PDOStatement
     */
    public function getTags()
    {
        return $this->runSql('select * from tags');
    }

    /**
     *  Retrieve all images
     *  @return: PDOStatement
     */
    public function getImages()
    {
        return $this->runSql('select * from images');
    }

    /**
     *  Retrieve an article with given id
     *  @param: articleId: int
     *  @return: PDOStatement
     */
    public function getArticleById( $articleId )
    {
        return $this->runSql('select articles.* from articles where articles.id ='. $articleId);
    }


    /**
     *  Retrieve an category with given id
     *  @param: categoryId: int
     *  @return: PDOStatement
     */
    public function getCategoryById( $categoryId )
    {
        return $this->runSql('select categories.* from categories where categories.id = ' . $categoryId);
    }

    /**
     *  Retrieve a tag with given id
     *  @param: tagId: int
     *  @return: PDOStatement
     */
    public function getTagById( $tagId )
    {
        return $this->runSql('select tags.*
        from tags
        where tags.id = ' . $tagId);
    }

    /**
     *  Retrieve a specific image with given id
     *  @return: PDOStatement
     */
    public function getImageById( $id )
    {
        return $this->runSql('select * from images where id = ' . $id);
    }

    /**
     *  Retrieve all images with given article id
     *  @return: PDOStatement
     */
    public function getImagesByArticle( $articleId )
    {
        return $this->runSql('select images.path from articles
        left join images on articles.id = images.article_id
        where articles.id =' . $articleId);
    }

    /**
     *  Retrieve all articles with given category
     *  @param: categoryId: int
     *  @return: PDOStatement
     */
    public function getArticlesByCategory( $categoryId )
    {
        return $this->runSql('select articles.*
        from ( articles inner join article_category on articles.id = article_category.article_id)
        inner join categories on categories.id = article_category.category_id
        where categories.id =' . $categoryId);
    }

    /**
     *  Retrieve all articles with given tag
     *  @param: tagId: int
     *  @return: PDOStatement
     */
    public function getArticlesByTag( $tagId )
    {
        // TODO: implement this - similar to getArticlesByCategory
    }

    /**
     *  Convert a PDOStatement object into JSON string.
     *  @param: $pdoStmt as an instance of PDOStatement::class
     *  @return: string (json format)
     */
    public function toJSON( $pdoStmt )
    {
        return json_encode($pdoStmt->fetchAll());
    }

    /**
     *  Execute a sql code
     *  @param: sql code as string
     *  @return: PDOStatement 
     */
    private function runSql( $sql )
    {
        return $this->pdo->query($sql);
    }
}