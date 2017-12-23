exports.getArticlesByCategory  = ( categoryId ) => 
    `select articles.id, articles.title, articles.intro_image
    from ( articles inner join article_category on articles.id = article_category.article_id)
    inner join categories on categories.id = article_category.category_id
    where categories.id = ${categoryId};`

exports.getArticleDetail = ( articleId ) => 
    `select * from articles where id = ${articleId}`

exports.getTagsByArticle = ( articleId ) => 
    `select tags.id, tags.name
    from ( tags inner join article_tag on tags.id = article_tag.tag_id)
    inner join articles on articles.id = article_tag.article_id
    where articles.id = ${articleId}`

exports.getImagesByArticle = ( articleId ) => 
    `select * from images where article_id = ${articleId}`

exports.getCategoryOfArticle = ( articleId ) => 
    `select categories.id, categories.name
    from (categories inner join article_category on categories.id = article_category.category_id)
    inner join articles on articles.id = article_category.article_id
    where articles.id = ${articleId}`

exports.getAllArticles = () => 
    `select * from articles`