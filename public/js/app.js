const { el, mount } = redom

window.onload = () => {
    renderMainView();
    attachListeners();    
}

function renderMainView()
{
    get('/api/article', function (articles) {
        get('/api/image', function (images) {
            console.log(images)
            console.log(articles)
        })
    }) 
}

function renderCategoryView( categoryId )
{
    // get articles by category_id
    // update view
}

function renderArticleView( articleId )
{
    // get article by id
    // get related article
    // get tags 
    // update view
}

function renderTagView( tagId )
{
    // get article by tag_id
    // update view
}

function attachListeners()
{
    let fashion = 1
    let discovery = 2
    let music = 3
    let cinema = 4
    let world = 5
    $('#category-music').click(function () {
        renderCategoryView(music)
    })
    $('#category-cinema').click(function () {
        renderCategoryView(cinema)
    })
    $('#category-world').click(function () {
        renderCategoryView(world)
    })
    $('#category-discovery').click(function () {
        renderCategoryView(discovery)
    })
    $('#category-fashion').click(function () {
        renderCategoryView(fashion)
    })
}

//===================================================
function createArticleItem( slides, article )
{
    // create an article item in 
    return el('div.blog', [
        el('h5', 'feb 2017'),
        el('img.img-responsive', {'src': 'image_path'}),
        el('p', '...'),
        el ('h3', '...'),
        el ('p', '...'),
        el ('div.ficon', el('a', 'Author'))
    ])
}

function createRowArticleItem( article_1, article_2 )
{

}
//====================================================

function createArticle( slides, article )
{
    // create a specific article view
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

// helper method
function get( url, callback ) {
    fetch(url)
    .then(res => res.json())
    .then(res => callback(res));
}