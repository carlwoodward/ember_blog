EmberBlog.PostController = Ember.ObjectController.extend
  isEditing: false

  stopEditing: ->
    @get("store").commit()
    @set "isEditing", false

  showLogin: ->
    @transitionToRoute("session.new")
