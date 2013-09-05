EmberBlog.PostController = Ember.ObjectController.extend
  isEditing: false

  stopEditing: ->
    @set "isEditing", false

  showLogin: ->
    @transitionToRoute("session.new")
