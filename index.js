// modules
const express = require('express')
const resources = require('./core/resources')

// required packages
let path = require('path')

// application instance
let app = express()

// setup static asset folder
app.use(express.static(path.join(__dirname, 'public')))

/**
 *  Route export API, accesible public
 */

// get all articles by a specific category id
app.get('/api/category/:categoryId', (req, res) => {
    resources.getArticleByCategory(req.categoryId, rows => {
        res.json(rows)
    })
})

// get all categories
app.get('/api/category', (req, res) => {
    resources.getCategories(rows => {
        res.json(rows)
    })
})

// get detail of an article
app.get('/api/article/:articleId', (req, res) => {
    resources.getDetailArticle(req.articleId, rows => {
        res.json(rows)
    })
})

app.listen(3000, () => console.log('local news server is running on port 3000'))