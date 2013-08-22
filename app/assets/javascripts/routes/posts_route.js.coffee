EmberBlog.PostsRoute = Ember.Route.extend
  model: ->
    EmberBlog.Post.find()
