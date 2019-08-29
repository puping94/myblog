# frozen_string_literal: true

source "https://gems.ruby-china.com"

ruby "2.6.3"

gem "mysql2", ">= 0.3.18"
gem "rails", "~> 6.0"

gem "bootsnap", "~> 1.3"

gem "jquery-rails"
gem "puma", "~> 3.0"
#  压缩JavaScript
gem "aasm", "~> 5.0"
gem "bootstrap-sass"
gem "sassc-rails", ">= 2.1.0"

gem "coffee-rails"
gem "jbuilder", "~> 2.5"
gem "pagy"
gem "rails-i18n"
gem "redis-rails", "~> 5.0"
gem "sass-rails", "~> 5.0"
gem "therubyracer", platforms: :ruby
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"

# markdown
gem "redcarpet", "~> 3.4"

gem "devise", "~> 4.4"
gem "devise-i18n", "~> 1.6"

gem "searchkick"
gem "oj" # increase json serialize performance

group :development, :test do
  gem "byebug", platform: :mri

  gem "database_cleaner"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "rails-controller-testing"
  gem "rspec-rails"
  gem "shoulda-matchers"

  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-performance"
end

group :development do
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
