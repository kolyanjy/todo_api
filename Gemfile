source 'https://rubygems.org'

ruby '2.6.1'

# auth
gem 'bcrypt', '~> 3.1.7'
gem 'jwt_sessions'

# jsonapi
gem 'jsonapi.rb', require: 'jsonapi'

# serializer
gem 'fast_jsonapi', '~> 1.5'
gem 'oj'

# authorization
gem 'pundit'

# storage
gem 'pg'
gem 'redis'

# system
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.3'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug'
  gem 'rspec-rails'

  # linters
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'rails_best_practices'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rspec'
end

group :development do
  gem 'awesome_rails_console', '~> 0.4.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'dox', '~> 1.1', require: false
  gem 'json_matchers'
  gem 'rspec', '~> 3.8'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'simplecov'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
