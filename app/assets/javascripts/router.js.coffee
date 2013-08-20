EmberBlog.Router.map (match) ->
  @resource "dashboard", path: "/"
  @resource "post", path: "/posts/:post_slug"
