class SessionsController < ApplicationController
  def create
    user_session = Session.new :email => params[:email], :password => params[:password]
    if user_session.valid?
      session[:user_id] = user_session
      render :json => { :session => user_session }
    else
      render :json => { :session => user_session }, :status => :forbidden
    end
  end
end
