module Docs
  module V1
    module Registration
      extend Dox::DSL::Syntax

      document :api do
        resource 'Registration' do
          endpoint '/Registration'
          group 'Registration'
        end
      end

      document :create do
        action 'Create user'
      end
    end
  end
end
