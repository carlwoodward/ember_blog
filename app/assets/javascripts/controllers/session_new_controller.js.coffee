EmberBlog.SessionNewController = Ember.Controller.extend
  create: ->
    @get("model").save().then =>
      EmberBlog.loginStateManager.transitionTo("loggedIn")
      @transitionToRoute "posts"
