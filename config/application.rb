require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FinalForum
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.exceptions_app = self.routes

    config.action_view.sanitized_allowed_tags = ['p', 'strong', 'em', 'a', 'img', 'blockquote', 'hr', 'ul', 'ol', 'li']
    config.action_view.sanitized_allowed_attributes = ['href', 'title', 'style', 'src', 'target', 'id', 'name'] 

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
