EmberBlog.PostController = Ember.ObjectController.extend
  needs: "application"
  isEditing: false
  isLoggedIn: Ember.computed.alias("controllers.application.isLoggedIn")

  stopEditing: ->
    @get("store").commit()
    @set "isEditing", false

  showLogin: ->
    @transitionToRoute("session.new")
