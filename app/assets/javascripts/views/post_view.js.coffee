EmberBlog.PostView = Ember.View.extend
  doubleClick: ->
    if EmberBlog.loginStateManager.isLoggedIn()
      @controller.set "isEditing", true
    else
      @controller.showLogin()
