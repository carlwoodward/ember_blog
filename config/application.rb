require File.expand_path('../boot', __FILE__)

require "rails/all"

Bundler.require(:default, Rails.env)

module EmberBlog
  class Application < Rails::Application
    config.ember.variant = :development
  end
end
