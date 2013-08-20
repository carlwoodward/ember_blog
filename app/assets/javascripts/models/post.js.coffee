#= require models/store

EmberBlog.Post = DS.Model.extend
  body: DS.attr("string")

EmberBlog.Post.FIXTURES = [
  {
    id: 1
    body: "This is a __test__ post"
  }
]
