module Helpers
  module Api
    extend ActiveSupport::Concern

    included do
      before(:each) do
        request.headers[:Accept] = 'application/vnd.api+json'
        request.headers.merge! 'Content-Type' => 'application/vnd.api+json'
      end
    end
  end
end
