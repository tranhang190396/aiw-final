const mysql = require('mysql')
const sqlCode = require('./sqlCode')
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1',
    database: 'local_news'
})
connection.connect()
/**
 * Get all articles of a category by category id
 * @param categoryId: string
 * @param callback: fn
 */
exports.getArticlesByCategory = ( categoryId, callback ) => {
    connection.query(
        sqlCode.getArticlesByCategory(categoryId), 
        (err, result) => callback(result)
    )
}

/**
 * Get a detail of an article by article id
 * @param articleId: string
 * @param callback: fn
 */
exports.getDetailArticle = ( articleId, callback ) => {

    connection.query(
        sqlCode.getArticleDetail(articleId), 
        (err, result) => callback(result))
}

/**
 * Get all tags of an article by article id
 * @param articleId: string
 * @param callback: fn
 */
exports.getTagsByArticle = ( articleId, callback ) => {
    connection.query(
        sqlCode.getTagsByArticle(articleId), 
        (err, result) => callback(result))
}

/**
 * Get all images of an article by article id
 * @param articleId: string 
 * @param callback: fn
 */
exports.getImagesByArticle = ( articleId, callback ) => {
    connection.query(
        sqlCode.getImagesByArticle(articleId),
        (err, result) => callback(result)
    )
}

/**
 * Get a category of an article by article id
 * @param articleId: string
 * @param callback: fn
 */
exports.getCategoryOfArticle = ( articleId, callback ) => {
    connection.query(
        sqlCode.getCategoryOfArticle(articleId),
        (err, result) => callback(result)
    )
}

/**
 * Get all articles
 * @param callback: fn
 */
exports.getAllArticles = ( callback ) => {
    
    connection.query(
        sqlCode.getAllArticles(),
        (err, result) => callback(result)
    )
}

/**
 * Get all comments of an article by article id
 * @param articleId: string 
 * @param callback: fn
 */
exports.getCommentsByArticle = ( articleId, callback ) => {
    connection.query(
        sqlCode.getCommentsByArticle(articleId),
        (err, result) => callback(result)
    )
}

/**
 * Add a comment 
 * @param comment: obj 
 */
exports.addComment = ( comment ) => {
    connection.query(
        sqlCode.addComment(comment),
        (err, result) => {
            if (err) throw err;
        }
    )
}

/**
 * Get all articles of a tag by tag id
 * @param tagId: string 
 */
exports.getArticlesByTag = ( tagId, callback ) => {
    connection.query(
        sqlCode.getArticlesByTag(tagId),
        (err, result) => {
            if (err) throw err;
            callback(result)
        }
    )
}