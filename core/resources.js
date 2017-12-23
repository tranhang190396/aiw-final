const mysql = require('mysql')
const sqlCode = require('./sqlCode')
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1',
    database: 'local_news'
})
connection.connect()

exports.getArticleByCategory = ( categoryId, callback ) => {

    connection.query(
        sqlCode.getArticlesByCategory(categoryId), 
        (err, result) => callback(result)
    )
}

exports.getDetailArticle = ( articleId, callback ) => {

    connection.query(
        sqlCode.getArticleDetail(articleId), 
        (err, result) => callback(result))
}

exports.getTagsByArticle = ( articleId, callback ) => {
    connection.query(
        sqlCode.getTagsByArticle(articleId), 
        (err, result) => callback(result))
}

exports.getImagesByArticle = ( articleId, callback ) => {
    connection.query(
        sqlCode.getImagesByArticle(articleId),
        (err, result) => callback(result)
    )
}

exports.getCategoryOfArticle = ( articleId, callback ) => {
    connection.query(
        sqlCode.getCategoryOfArticle(articleId),
        (err, result) => callback(result)
    )
}