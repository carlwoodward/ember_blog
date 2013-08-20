Ember.Handlebars.registerBoundHelper "markdown", (input) ->
  new Ember.Handlebars.SafeString new Showdown.converter().makeHtml(input)
