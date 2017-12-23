

// sample use of mustache
var template = '<h1>{{title}}</h1><ul>{{#names}}<li>{{name}}</li>{{/names}}</ul>'
var data = {"title": "Story", "names": [{"name": "Tarzan"}, {"name": "Jane"}]}

var result = Mustache.render(template, data)

document.getElementById('sample').innerHTML = result

window.onload = () => {
    getDetailArticle(1, (article) => {
        console.log(article)
    })
    
    getArticlesByCategory(1, (articles) => {
        console.log(articles)
    })
}

// helper
get = ( url, callback ) => {
    fetch(url)
    .then(res => res.json())
    .then(res => callback(res))
}
// request for api: some how end up using callback hell =)))
getDetailArticle = ( articleId , callback) => {
    let article = {}
    get('/api/article/' + articleId, res => {
        article.article = res[0]
        get('/api/images/' + articleId, res => {
            article.images = res
            get('/api/tags/' + articleId, res => {
                article.tags = res
                get('/api/category_of/' + articleId, res => {
                    article.category = res[0]
                    get('/api/category/' + res[0].id, res => {
                        // randomly remove 1 article
                        res.splice([Math.floor(Math.random() * 3) + 1], 1)
                        article.related = res
                        return callback(article)
                    }) 
                })
            })
        })
    })
}

getArticlesByCategory= ( categoryId, callback ) => {
    get('/api/category/' + categoryId, res => callback(res))
}
