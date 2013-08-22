EmberBlog.Router.map (match) ->
  @resource "dashboard", path: "/"
  @resource "posts", path: "/posts"
  @resource "post", path: "/posts/:post_slug"
