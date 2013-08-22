EmberBlog.Router.map (match) ->
  @resource "posts", path: "/posts"
  @resource "post", path: "/posts/:post_slug"
