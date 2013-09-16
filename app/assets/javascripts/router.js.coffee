EmberBlog.Router.map (match) ->
  @resource "session", { path: "/session" }, ->
    @route "new"
  @resource "posts", path: "/posts"
  @resource "post", path: "/posts/:post_id"
