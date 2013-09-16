EmberBlog.SessionNewController = Ember.Controller.extend
  needs: ["application"]

  actions:
    create: ->
      applicationController = @controllerFor "application"
      $.post "/sessions", @get("model").serialize(), (response) =>
        applicationController.login()
        @transitionToRoute "posts"
