require "bundler/setup"
require "action_controller"
require "action_controller/base"

class ApplicationController < ActionController::Base
end

require "grandbazaar"
require "grandbazaar/base_controller"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  # config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
