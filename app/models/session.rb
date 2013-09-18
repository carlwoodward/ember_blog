class Session
  include ActiveModel::Model

  attr_accessor :email, :password

  def valid?
    email == ENV["LOGIN_EMAIL"] && password == ENV["LOGIN_PASSWORD"]
  end
end
