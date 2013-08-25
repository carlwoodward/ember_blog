module "integration",
  setup: ->
    EmberBlog.reset()

  teardown: ->
    $(".modal").modal "hide"

test "pops up an login dialog", ->
  visit("/session/new").then ->
    equal find(".modal.session.new.fade").length, 1, "display login"
