require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AdvenTuringMachine
  class Application < Rails::Application

    config.action_dispatch.default_headers = {
      'Access-Control-Allow-Origin' => 'http://localhost:8080',
      'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(","),
      'Access-Control-Allow-Headers' => 'Content-Type'
    }

    # Access-Control-Allow-Headers: Content-Type
    # Access-Control-Allow-Methods: GET, POST, OPTIONS
    # Access-Control-Allow-Origin: *
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
