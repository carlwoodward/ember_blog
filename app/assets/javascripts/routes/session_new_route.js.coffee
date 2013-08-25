EmberBlog.SessionNewRoute = Ember.Route.extend
  model: (params) ->
    EmberBlog.Session.createRecord()
