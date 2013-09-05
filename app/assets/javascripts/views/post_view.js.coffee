EmberBlog.PostView = Ember.View.extend
  didInsertElement: ->
    $('.post-summary').dblclick =>
      @controller.set 'isEditing', true
