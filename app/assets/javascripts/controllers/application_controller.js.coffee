EmberBlog.ApplicationController = Ember.Controller.extend
  isLoggedIn: false

  login: ->
    @set "isLoggedIn", true

  logout: ->
    @set "isLoggedIn", false
