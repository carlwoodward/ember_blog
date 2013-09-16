EmberBlog.PostView = Ember.View.extend
  doubleClick: ->
    debugger
    if @controller.controllerFor("application").get("isLoggedIn")
      @controller.set "isEditing", true
    else
      @controller.showLogin()

  resizeTextArea: (->
    Ember.run.next @, =>
      textarea = @$("textarea")
      if textarea? and textarea.length > 0
        textarea.height(textarea.get(0).scrollHeight)
  ).observes("controller.model.body", "controller.isEditing")
