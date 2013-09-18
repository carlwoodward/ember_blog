EmberBlog.PostsController = Ember.ArrayController.extend
  needs: ["application"]
  canAdd: Ember.computed.alias("controllers.application.isLoggedIn")

  actions:
    addPost: ->
      EmberBlog.Post.createRecord(title: "Default title", body: "Default body")
      @get("store").commit()
