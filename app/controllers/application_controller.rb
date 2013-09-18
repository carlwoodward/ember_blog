class ApplicationController < ActionController::Base
  skip_before_filter :verify_authenticity_token

  def index
  end

  def logged_in
    raise "User not logged in."
  end
end
