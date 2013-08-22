EmberBlog.PostRoute = Ember.Route.extend
  model: (params) ->
    EmberBlog.Post.find(params["post_slug"])
