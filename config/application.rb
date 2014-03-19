require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module DigistoreApi
  class Application < Rails::Application

    config.middleware.use Rack::Cors do
      allow do
        origins 'http://localhost:9000'
        resource '*', :headers => :any, :methods => [:get, :post, :options, :delete, :patch, :put]
      end
    end

  end
end
