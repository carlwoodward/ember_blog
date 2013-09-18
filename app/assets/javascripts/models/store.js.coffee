DS.RESTAdapter.configure "plurals", post: "posts"

EmberBlog.Store = DS.Store.extend
  revision: 14
  adapter: DS.RESTAdapter.create(url: API_HOST)
