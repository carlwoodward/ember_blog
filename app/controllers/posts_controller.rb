class PostsController < ApplicationController
  respond_to :json

  before_filter :logged_in, :only => [:create, :update]

  def index
    respond_with :posts => Post.all.map(&:attributes)
  end

  def show
    respond_with Post.find(params[:id])
  end

  def create
    post = Post.create! post_params
    respond_with post
  end

  def update
    post = Post.find(params[:id])
    post.update_attributes post_params
    respond_with post
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
