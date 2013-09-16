class PostsController < ApplicationController
  respond_to :json

  def index
    posts = { :posts => [{ :id => 1, :title => "Test", :body => "This is a test", :published_on => "19 March 2013" }] }
    respond_with posts
  end

  def show
    post = { :post => { :id => 1, :title => "Test", :body => "This is a test", :published_on => "19 March 2013" } }
    respond_with post
  end

  def update
    post = { :post => { :id => 1, :title => "Test", :body => "This is a test", :published_on => "19 March 2013" } }
    respond_with post
  end
end
