require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    Rollbar.configure do |config|
      config.access_token = '<yourToken>'
      config.branch = 'master'
      config.environment = 'prod'
      config.code_version = '1.1'
    end
    Rollbar.info("Hello world!")

    begin
      # divide by zero always fails
      5456487 / 0

    rescue ZeroDivisionError => exception
      Rollbar.error(exception)
    end




    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
