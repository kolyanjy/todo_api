require 'simplecov'

SimpleCov.start do
  add_filter 'spec'
  minimum_coverage 95
end

require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
abort('The Rails environment is running in production mode!') if Rails.env.production?

require 'rspec/rails'

Dir[File.dirname(__FILE__) + '/helpers/**/*.rb'].each { |file| require file }
Dir.glob(File.expand_path('support/**/*.rb', __dir__), &method(:require))

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
