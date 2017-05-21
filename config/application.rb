require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module Myblog
  class Application < Rails::Application
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = 'zh'

    config.autoload_paths += %W(#{config.root}/lib)
    
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: false,
        view_specs: false,
        helper_specs: true,
        routing_specs: true,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
  end
end
