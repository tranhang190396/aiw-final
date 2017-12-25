
// run on first
window.onload = () => {

    attachListener()
    
    getAllArticles((articles) => {
        renderMainView(articles)
    })
}

// attach listener into menu categories
attachListener = () => {
    const categories = {
        am_nhac: 3,
        thoi_trang: 1,
        dien_anh: 4,
        kham_pha: 2,
        the_gioi: 5
    }
    $('#am_nhac').click(() => {
        getArticlesByCategory(categories.am_nhac, (articles) => {
            renderMainView(articles)
        })
    })
    
    $('#dien_anh').click(() => {
        getArticlesByCategory(categories.dien_anh, (articles) => {
            renderMainView(articles)
            // update view by render 3 items of article in main
        })
    })

    $('#thoi_trang').click(() => {
        getArticlesByCategory(categories.thoi_trang, (articles) => {
            renderMainView(articles)
            // update view by render 3 items of article in main
        })
    })

    $('#kham_pha').click(() => {
        getArticlesByCategory(categories.kham_pha, (articles) => {
            renderMainView(articles)
        })
    })

    $('#the_gioi').click(() => {
        getArticlesByCategory(categories.the_gioi, (articles) => {
            renderMainView(articles)
        })
    })
}

// request helper
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

getArticlesByCategory = ( categoryId, callback ) => {
    get('/api/category/' + categoryId, res => callback(res))
}

getAllArticles = ( callback ) => {
    get('/api/articles', res=> callback(res))
}

renderArticle = ( article ) => {
    return Mustache.render(`
    <div class="card red">
        <div class="image">
            <img src="/${article.intro_image}">
        </div>
        <div class="content">
            <div class="header">${article.title}</div>
            <div class="meta">
                <a>${article.author}</a>
            </div>
            <div class="description">
            ${article.intro}
            </div>
        </div>
        <div class="extra content">
            <button class="ui inverted red button read-more" id="${article.id}">
                <a href="#">Read more</a>
            </button>
        </div>
    </div>
    `, article)
}


renderMainView = ( articles ) => {
    // select view
    let view = $('#articles-container')

    // refresh view
    view.empty()

    // inject article components into view
    for (let article of articles)
    {
        view.append( renderArticle(article) )
    }

    $('.read-more').click(function() {
        let articleId = $(this).attr('id') 
        getDetailArticle(articleId, (article) => {
            console.log(article)
            // render article detail view here
        })
    })
}
