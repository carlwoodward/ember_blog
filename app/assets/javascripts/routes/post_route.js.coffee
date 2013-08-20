EmberBlog.PostRoute = Ember.Route.extend
  model: ->
    EmberBlog.Post.find()
