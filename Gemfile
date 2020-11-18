# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.3", ">= 6.0.3.4"
# Use mysql as the database for Active Record
gem "mysql2", ">= 0.4.4"
# Use Puma as the app server
gem "puma", "~> 4.1"
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem "webpacker", "~> 4.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false
gem 'activeadmin', '~> 2.8', '>= 2.8.1'
gem 'devise', '~> 4.7', '>= 4.7.3'
gem 'will_paginate', '~> 3.3'
gem 'friendly_id', '~> 5.4'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  
  gem "dotenv-rails", "~> 2.7"

  gem "factory_bot_rails", "~> 5.1", ">= 5.1.1"
  gem "rspec-rails", "~> 4.0.1"
  gem "shoulda-matchers", "~> 4.1", ">= 4.1.2"
  gem "ffaker", "~> 2.13"
  gem "rails-controller-testing", "~> 1.0", ">= 1.0.5"

  gem "rubocop-rails", "~> 2.6"
  gem "rubocop-performance", "~> 1.6", ">= 1.6.1"
  gem "rubocop-rspec", "~> 1.27"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "listen", "~> 3.2"
  gem "web-console", ">= 3.3.0"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "annotate", "~> 3.1", ">= 3.1.1"
  gem "rubycritic", "~> 4.5", ">= 4.5.2"
  gem "spring", "~> 2.1", ">= 2.1.1"
  gem "spring-watcher-listen", "~> 2.0.0"

  # gem for linting files
  gem 'erb_lint', '~> 0.0.30', require: false
  gem 'htmlbeautifier', require: false

end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver", "~> 3.142", ">= 3.142.7"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers", "~> 4.4", ">= 4.4.1"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# tagging
gem 'acts-as-taggable-on', '~> 6.0'
