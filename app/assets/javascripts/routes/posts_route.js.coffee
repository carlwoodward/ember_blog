EmberBlog.PostsRoute = Ember.Route.extend
  model: ->
    @get("store").find("post")
