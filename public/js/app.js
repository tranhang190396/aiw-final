const { el, mount } = redom;

window.onload = () => {
    getArticles( function(res) {
        printArticles(res);
    } );

    getArticleById(1, function(res) {
        printArticles(res);
    });

}

function printArticles( articles )
{
    console.log(articles);
    // create articles here by call createArticle()
    // append into <main></main> by select document by id = main, then append by jquery
}

function createArticle( slides, article )
{
    return el('div.blog', [
        el('h5', 'feb 2017'),
        el('img.img-responsive', {'src': 'image_path'}),
        el('p', '...'),
        el ('h3', '...'),
        el ('p', '...'),
        el ('div.ficon', el('a', 'Author'))
    ])
}
function createSlides( images )
{
    return el('div.slider', [
        el('div.img-responsive', el('ul.bxslider', [
            el('li', el('img', {'src': 'image_path'})),
            el('li', el('img', {'src': 'image_path'})),
            el('li', el('img', {'src': 'image_path'}))
        ]))
    ])
}

function getArticles( cb )
{
    makeRequest('api/article', cb);
}

function getArticleById( articleId, cb )
{
    makeRequest('/api/article?id=' + articleId, cb);
} 

function getArticlesByCategory( categoryId, cb )
{
    makeRequest('/api/article?category=' + categoryId, cb);
}

function getArticlesByTag( tagId, cb )
{
    makeRequest('/api/article?tag=' + tagId, cb);
}

function getCategories( cb )
{
    makeRequest('/api/category', cb);
}

function getCategoryById( categoryId, cb )
{
    makeRequest('/api/category?id=' + categoryId);
}

function getImages( cb )
{

}

function getImageById( imageId , cb)
{

}

function getImagesByArticle( articleId, cb)
{

}

function getTags( cb )
{

}

function getTagById( cb )
{

}

function makeRequest( url, cb) {
    fetch(url).then(res => res.json()).then(res => cb(res));
}