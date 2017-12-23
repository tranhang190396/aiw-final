
var template = '<h1>{{title}}</h1><ul>{{#names}}<li>{{name}}</li>{{/names}}</ul>'
var data = {"title": "Story", "names": [{"name": "Tarzan"}, {"name": "Jane"}]}

var result = Mustache.render(template, data)

document.getElementById('sample').innerHTML = result