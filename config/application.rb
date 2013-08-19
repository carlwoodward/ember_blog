require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module EmberBlog
  class Application < Rails::Application
    config.ember.variant = :development
  end
end
