#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self

EmberBlog.loginStateManager = Ember.StateManager.create
  initialState: "loggedOut"

  states:
    loggedOut: Ember.State.create()
    loggedIn: Ember.State.create()
