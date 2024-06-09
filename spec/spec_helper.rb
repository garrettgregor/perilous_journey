require 'simplecov'
SimpleCov.start

RSpec.configure do |config|
  config.formatter = :documentation
end

require './lib/node'
require './lib/linked_list'
