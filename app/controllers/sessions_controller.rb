class SessionsController < ApplicationController
  def create
    session = Session.new :email => params[:email], :password => params[:password]
    if session.valid?
      session[:user_id] = session
      render :json => { :session => session }
    else
      render :json => { :session => session }, :status => :forbidden
    end
  end
end
