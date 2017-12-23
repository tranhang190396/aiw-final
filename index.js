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
    resources.getArticleByCategory(req.params.categoryId, result => {
        res.json(result)
    })
})

// get detail of an article
app.get('/api/article/:articleId', (req, res) => {
    resources.getDetailArticle(req.params.articleId, result => {
        res.json(result)
    })
})

app.get('/api/images/:articleId', (req, res) => {
    resources.getImagesByArticle(req.params.articleId, result => {
        res.json(result)
    })
})

app.get('/api/tags/:articleId', (req, res) => {
    resources.getTagsByArticle(req.params.articleId, result => {
        res.json(result)
    })
})

app.get('/api/category_of/:articleId', (req, res) => {
    resources.getCategoryOfArticle(req.params.articleId, result => {
        res.json(result)
    })
})

app.listen(3000, () => console.log('local news server is running on port 3000'))