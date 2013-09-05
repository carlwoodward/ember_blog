EmberBlog.PostsController = Ember.ArrayController.extend
  canAdd: false

  updateCanAdd: (->
    @set "canAdd", EmberBlog.loginStateManager.isLoggedIn()
  ).observes("EmberBlog.loginStateManager.currentState.name")

  addPost: ->
    EmberBlog.Post.createRecord()
    @get("store").commit()
