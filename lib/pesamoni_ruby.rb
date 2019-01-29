# Common files
require 'pesamoni_ruby/api_client'
require 'pesamoni_ruby/api_error'
require 'pesamoni_ruby/version'
require 'pesamoni_ruby/configuration'

# Models
require 'pesamoni_ruby/models/inline_response_200'

# APIs
require 'pesamoni_ruby/api/default_api'

module Pesamoni
  class << self
    # Customize default settings for the SDK using block.
    #   Pesamoni.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
