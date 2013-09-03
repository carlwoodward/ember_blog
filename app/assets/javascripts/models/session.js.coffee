EmberBlog.Session = DS.Model.extend
  email: DS.attr("string")
  password: DS.attr("string")

  invalid: (->
    if @get("email")? and @get("password")?
      @get("email").length is 0 and @get("password").length is 0
    else
      true
  ).property("email", "password")
