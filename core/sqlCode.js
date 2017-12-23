exports.getArticlesByCategory  = ( categoryId ) => 
    `select articles.*
    from ( articles inner join article_category on articles.id = article_category.article_id)
    inner join categories on categories.id = article_category.category_id
    where categories.id = ${categoryId};`

exports.getDetailArticle = ( articleId ) =>
    `select * from articles`

exports.getCategories = () => 
    `select * from categories`