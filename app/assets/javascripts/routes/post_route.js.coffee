EmberBlog.PostRoute = Ember.Route.extend
  model: (params) ->
    @get("store").find("post", 1)
