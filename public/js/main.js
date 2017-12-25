// run on first
window.onload = () => {
  attachListener();

  getAllArticles(articles => {
    renderMainView(articles);
  });
};

// attach listener into menu categories
attachListener = () => {
  const categories = {
    am_nhac: 3,
    thoi_trang: 1,
    dien_anh: 4,
    kham_pha: 2,
    the_gioi: 5
  };
  $("#am_nhac").click(() => {
    getArticlesByCategory(categories.am_nhac, articles => {
      renderMainView(articles);
    });
  });

  $("#dien_anh").click(() => {
    getArticlesByCategory(categories.dien_anh, articles => {
      renderMainView(articles);
      // update view by render 3 items of article in main
    });
  });

  $("#thoi_trang").click(() => {
    getArticlesByCategory(categories.thoi_trang, articles => {
      renderMainView(articles);
      // update view by render 3 items of article in main
    });
  });

  $("#kham_pha").click(() => {
    getArticlesByCategory(categories.kham_pha, articles => {
      renderMainView(articles);
    });
  });

  $("#the_gioi").click(() => {
    getArticlesByCategory(categories.the_gioi, articles => {
      renderMainView(articles);
    });
  });
};

// request helper
get = (url, callback) => {
  fetch(url)
    .then(res => res.json())
    .then(res => callback(res));
};

// request for api: some how end up using callback hell =)))
getDetailArticle = (articleId, callback) => {
  let article = {};
  get("/api/article/" + articleId, res => {
    article.article = res[0];
    get("/api/images/" + articleId, res => {
      article.images = res;
      get("/api/tags/" + articleId, res => {
        article.tags = res;
        get("/api/category_of/" + articleId, res => {
          article.category = res[0];
          get("/api/category/" + res[0].id, res => {
            // randomly remove 1 article
            res.splice([Math.floor(Math.random() * 3) + 1], 1);
            article.related = res;
            get("/api/comment/" + articleId, comments => {
              article.comments = comments;
              return callback(article);
            });
          });
        });
      });
    });
  });
};

getArticlesByCategory = (categoryId, callback) => {
  get("/api/category/" + categoryId, res => callback(res));
};

getAllArticles = callback => {
  get("/api/articles", res => callback(res));
};

renderArticle = article => {
  return Mustache.render(
    `
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
    `,
    article
  );
};

renderMainView = articles => {
  // select view
  let view = $("#articles-container");

  // refresh view
  view.empty();

  // inject article components into view
  for (let article of articles) {
    view.append(renderArticle(article));
  }

  // only active once ==!
  $(".read-more").click(function() {
    let articleId = $(this).attr("id");
    getDetailArticle(articleId, article => {
      view.empty();
      view.append(articleComp(article));
      // add listener to link and button
      $(".related").click(function() {
        getDetailArticle($(this).attr("id"), article => {
          view.empty();
          view.append(articleComp(article));
          // dirty loop back
          addLinkListener(view);
        });
      });

      // add tag listener
      $(".tags").click(function() {
        let link = "/api/" + $(this).attr("id");
        get(link, articles => {
          renderMainView(articles);
        });
      });

      $("#add-comment").click(function() {
        let email = $("#input-email").val();
        let content = $("#input-text").val();
        console.log(articleId);
        // /api/add_comment?email=...&content=...&article_id=...: add a comment
        fetch(
          "/api/add_comment?email=" +
            email +
            "&content=" +
            content +
            "&article_id=" +
            articleId
        ).then(() => {
          // console.log('ok')
          // get('/api/comment/' + articleId, (comments) => {

          // })
          getDetailArticle(articleId, article => {
            view.empty();
            view.append(articleComp(article));
            // dirty loop back
            addLinkListener(view);
          });
        });
      });
    });
  });
};

addLinkListener = view => {
  $(".related").click(function() {
    getDetailArticle($(this).attr("id"), article => {
      view.empty();
      view.append(articleComp(article));

      addLinkListener(view);
    });
  });
};

metaComp = (title, intro, created) => {
  return Mustache.render(
    `
    <div class="ui main text container">
    <h1 class="ui header">${title}</h1>
    <p>${created}</p>
    <p>${intro}</p>
    </div>
    `,
    { title: title, intro: intro, created: created }
  );
};

slideComp = images => {
  return `<h1>SLIDE HEREEEE</h1>`;
};

mainComp = (content, author) => {
  return Mustache.render(
    `
    <div class="ui text container">
    <div class="ui inverted section divider"></div>
    <p>${content}</p>
    <p style="text-align:right;"> ${author}</p>
    `,
    { content: content, author: author }
  );
};

relatedComp = related => {
  return Mustache.render(
    `
        <p>
        Related Articles:
        </p>
        <a href="#" class='related' id="${
          related[0].id
        }" title="related articles">
        ${related[0].title}
        </a>
        <br>
        <a href="#" class='related' id="${
          related[1].id
        }" title="related articles">
        ${related[1].title}
        </a>
        <div class="ui inverted section divider"></div>
    `,
    related
  );
};

tagComp = tags => {
  let tagComp = "<h5>Popular tags</h5>";
  for (let tag of tags) {
    tagComp += tagItem(tag);
  }
  return tagComp;
};

tagItem = tag => {
  return Mustache.render(
    `
    <button class="ui button tags" id="tag/${tag.id}">
    <a href="#">${tag.name}</a>
    </button>
    `,
    tag
  );
};

commentComp = comments => {
  let result = `<div class="ui comments">
    <h3 class="ui dividing header">Comments</h3>`;

  if (comments) {
    for (let comment of comments) {
      result += commentItem(comment);
    }
  }

  result += `
    <form class="ui reply form">
        <div class="field">
            <input type='emai' id='input-email' placeholder='your_email@example.com'>
        </div>
        <div class="field">
            <textarea id='input-text'></textarea>
        </div>
        <div class="ui blue labeled submit icon button" id='add-comment'>
            <i class="icon edit"></i> Add Reply
        </div>
    </form></div>`;
  return result;
};

commentItem = comment => {
  return Mustache.render(
    `
    <div class="comment">
    <div class="content">
        <a class="author">${comment.email}</a>
        <div class="text">
            ${comment.content}
        </div>
        <div class="actions">
            <a class="reply">Reply</a>
        </div>
    </div>
</div>`,
    comment
  );
};

articleComp = article => {
  return (
    metaComp(
      article.article.title,
      article.article.intro,
      article.article.created
    ) +
    slideComp(article.images) +
    mainComp(article.article.content, article.article.author) +
    relatedComp(article.related) +
    tagComp(article.tags) +
    commentComp(article.comments) +
    `</div></div>`
  );
};
