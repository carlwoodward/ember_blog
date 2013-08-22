#= require models/store

EmberBlog.Post = DS.Model.extend
  title: DS.attr("string")
  publishedOn: DS.attr("string")
  body: DS.attr("string")

EmberBlog.Post.FIXTURES = [
  {
    id: "test1",
    title: "This is a tile",
    publishedOn: "19th August 2013",
    body: "This is a __test__ post"
  },
  {
    id: "test2",
    title: "This is a tile",
    publishedOn: "19th August 2013",
    body: "Test 2"
  }
]
