require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PhlexDemo
  class Application < Rails::Application
    # this is confusing Brakeman
    # See more here: phlex-ruby/phlex-rails#205
    #
    # config.autoload_paths << "#{root}/app/views"
    # config.autoload_paths << "#{root}/app/views/layouts"
    # config.autoload_paths << "#{root}/app/views/components"
    #
    # Instead, we can use the following:
    config.autoload_paths.push(
      "#{root}/app/views",
      "#{root}/app/views/layouts",
      "#{root}/app/views/components",
    )

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
