EmberBlog.Router.map (match) ->
  @resource "dashboard", path: "/"
  @resource "post", path: "/post/:post_slug"
