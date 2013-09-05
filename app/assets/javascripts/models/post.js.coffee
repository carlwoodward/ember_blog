#= require models/store

EmberBlog.Post = DS.Model.extend
  title: DS.attr("string")
  publishedOn: DS.attr("string")
  body: DS.attr("string")

  autoSave: (->
    Ember.run.debounce @, (=> @get("store").commit()), 1000
  ).observes("isDirty")


EmberBlog.Post.FIXTURES = [
  {
    id: "test1",
    title: "This is a tile",
    publishedOn: "19th August 2013",
    body: "This is a __test__ post"
  },
  {
    id: "test2",
    title: "This is a tile2",
    publishedOn: "19th August 2013",
    body: "Test 2"
  }
]
