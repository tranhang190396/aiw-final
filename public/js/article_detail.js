renderArticle = (article) => {
    return Mustache.render(`

<div id="slides">
<img src="/${article.intro_image}">
<img src="/${article.intro_image}">
<img src="/${article.intro_image}">
<img src="/${article.intro_image}">
<img src=/${article.intro_image}">
</div>




<div class="ui comments">
    <h3 class="ui dividing header">Comments</h3>
    <div class="comment">
        <a class="avatar">
            <img src="/${article.intro_image}">
        </a>
        <div class="content">
            <a class="author">Matt</a>
            <div class="metadata">
                <span class="date">Today at 5:42PM</span>
            </div>
            <div class="text">
                How artistic!
            </div>
            <div class="actions">
                <a class="reply">Reply</a>
            </div>
        </div>
    </div>
    <div class="comment">
        <a class="avatar">
            <img src="/${article.intro_image}">
        </a>
        <div class="content">
            <a class="author">Elliot Fu</a>
            <div class="metadata">
                <span class="date">Yesterday at 12:30AM</span>
            </div>
            <div class="text">
                <p>This has been very useful for my research. Thanks as well!</p>
            </div>
            <div class="actions">
                <a class="reply">Reply</a>
            </div>
        </div>
        <div class="comments">
            <div class="comment">
                <a class="avatar">
                    <img src="/${article.intro_image}">
                </a>
                <div class="content">
                    <a class="author">Jenny Hess</a>
                    <div class="metadata">
                        <span class="date">Just now</span>
                    </div>
                    <div class="text">
                        Elliot you are always so right :)
                    </div>
                    <div class="actions">
                        <a class="reply">Reply</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="comment">
        <a class="avatar">
            <img src="/${article.intro_image}">
        </a>
        <div class="content">
            <a class="author">Joe Henderson</a>
            <div class="metadata">
                <span class="date">5 days ago</span>
            </div>
            <div class="text">
                Dude, this is awesome. Thanks so much
            </div>
            <div class="actions">
                <a class="reply">Reply</a>
            </div>
        </div>
    </div>
    <form class="ui reply form">
        <div class="field">
            <textarea></textarea>
        </div>
        <div class="ui blue labeled submit icon button">
            <i class="icon edit"></i> Add Reply
        </div>
    </form>
</div>

</div>

`, article)

}

//=======================================

metaComp = ( title, intro, created)  => {
    return Mustache.render(`
    <div class="ui main text container">
    <h1 class="ui header">${title}</h1>
    <p>${created}</p>
    <p>${intro}</p>
    </div>
    `, {title: title, intro: intro, created: created})
}

slideComp = (images) => {
    return `<h1>SLIDE HEREEEE</h1>`
}

mainComp = (content, author) => {
    return Mustache.render(`
    <div class="ui text container">
    <div class="ui inverted section divider"></div>
    <p>${content}</p>
    <p style="text-align:right;"> ${author}</p>
    `, {content: content, author: author})
}

relatedComp = (related) => {
    return Mustache.render(`
        <p>
        Related Articles:
        </p>
        <a href="#" id="${related[0].id}" title="related articles">
        ${related[0].title}
        </a>
        <br>
        <a href="#" id="${related[1].id}" title="related articles">
        ${related[1].title}
        </a>
        <div class="ui inverted section divider"></div>
    `, related)
}


tagComp = (tags) => {
    let tagComp = '<h5>Popular tags</h5>'
    for (let tag of tags) {
        tagComp += tagItem(tag)
    }
    return tagComp
}

tagItem = (tag) => {
    return Mustache.render(`
    <button class="ui button">
    <a href="#" id="tag-${tag.id}" class='tags'>${tag.name}</a>
    </button>
    `, tag)
}

commentComp = (comments) => {
    
}

articleComp = (article) => {
    return metaComp(article.title, article.intro, article.created)
        + slideComp(article.images)
        + mainComp(article.content, article.author)
        + relatedComp(article.related)
        + tagComp(article.tags)
        + commentComp(article.comments)
}
