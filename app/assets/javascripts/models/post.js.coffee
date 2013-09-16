#= require models/store

EmberBlog.Post = DS.Model.extend
  title: DS.attr("string")
  publishedOn: DS.attr("string")
  body: DS.attr("string")
