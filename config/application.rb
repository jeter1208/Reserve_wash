require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ReserveWash
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.i18n.default_locale = "zh-TW" 
    config.time_zone = "Taipei"
    Time::DATE_FORMATS.merge!(:default => '%Y/%m/%d %p%H:%M', :ymd => '%Y/%m/%d %I:%M %p')
    # Configuration for the application, engines, and railties goes here.
    config.active_job.queue_adapter = :sidekiq
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
