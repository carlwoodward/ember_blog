EmberBlog.PostView = Ember.View.extend
  doubleClick: ->
    @controller.set "isEditing", true
