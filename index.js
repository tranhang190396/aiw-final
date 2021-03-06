// modules
const express = require('express')
const resources = require('./core/resources')
const bodyParser = require('body-parser')


// required packages
let path = require('path')

// application instance
let app = express()

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())

// setup static asset folder
app.use(express.static(path.join(__dirname, 'public')))

/**
 *  Route export API, accesible public
 */


// get all articles by tag_id
app.get('/api/tag/:tagId', (req, res) => {
    resources.getArticlesByTag(req.params.tagId, result => {
        res.json(result)
    })
})

// get all articles by a specific category id
app.get('/api/category/:categoryId', (req, res) => {
    resources.getArticlesByCategory(req.params.categoryId, result => {
        console.log(result)
        res.json(result)
    })
})

// get detail of an article
app.get('/api/article/:articleId', (req, res) => {
    resources.getDetailArticle(req.params.articleId, result => {
        res.json(result)
    })
})

// get all images of a specific article by article_id
app.get('/api/images/:articleId', (req, res) => {
    resources.getImagesByArticle(req.params.articleId, result => {
        res.json(result)
    })
})

// get all tags of a specific article by article_id
app.get('/api/tags/:articleId', (req, res) => {
    resources.getTagsByArticle(req.params.articleId, result => {
        res.json(result)
    })
})

// get a category of a specific article by article_id
app.get('/api/category_of/:articleId', (req, res) => {
    resources.getCategoryOfArticle(req.params.articleId, result => {
        res.json(result)
    })
})

// get all articles
app.get('/api/articles', (req, res) => {
    resources.getAllArticles(result => {
        res.json(result)
    })
})

// add a comment
app.get('/api/add_comment', (req, res) => {
    resources.addComment(req.query)
    res.send(null)
})

// get all comments of a specific article by article_id
app.get('/api/comment/:articleId', (req, res) => {
    resources.getCommentsByArticle(req.params.articleId, result => {
        res.json(result)
    })
})


// start the application (chaneling)
app.listen(3000, () => console.log('local news server is running on port 3000'))