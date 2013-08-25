EmberBlog.SessionNewView = Ember.View.extend
  renderTemplate: ->
    @render "session/new", outlet: "modal"

  didInsertElement: ->
    $(".modal.session.new").on "click", ->
      $(".modal.session.new").modal "hide"
    $(".modal.session.new").modal "show"
