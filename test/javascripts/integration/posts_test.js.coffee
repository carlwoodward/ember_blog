module "integration",
  setup: ->
    EmberBlog.reset()

test "viewing all posts", ->
  visit("/posts").then ->
    equal find(".post").length, 2, "display 2 posts from fixtures"

test "viewing a posts", ->
  visit("/posts/test1").then ->
    equal find(".post-summary").length, 1, "display a single post"
