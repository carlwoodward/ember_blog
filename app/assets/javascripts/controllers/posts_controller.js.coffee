EmberBlog.PostsController = Ember.ArrayController.extend
  canAdd: false

  updateCanAdd: (->
    debugger
    @set "canAdd", @get("isLoggedIn")
  ).observes("isLoggedIn")

  addPost: ->
    EmberBlog.Post.createRecord()
    @get("store").commit()
