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

    let sql = sqlCode.getArticlesByCategory( categoryId )

    connection.query(sql, (err, rows) => {
        if (err) throw err
        return callback(rows)
    })
}


exports.getCategories = ( callback ) => {

    let sql = sqlCode.getCategories()

    connection.query(sql, (err, rows) => {
        if (err) throw err
        return callback(rows)
    })
}


exports.getDetailArticle = ( articleId, callback ) => {

    let sql = sqlCode.getDetailArticle(articleId)

    connection.query(sql, (err, rows) => {
        if (err) throw err
        return callback(rows)
    })
}