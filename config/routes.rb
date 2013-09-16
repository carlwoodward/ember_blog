EmberBlog::Application.routes.draw do
  resources :posts, :sessions

  root :to => "application#index"
end
