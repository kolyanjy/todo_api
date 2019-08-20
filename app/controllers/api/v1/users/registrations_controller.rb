module Api
  module V1
    module Users
      class RegistrationsController < ApplicationController
        def create
          user = User.new(user_params)
          if user.save
            render(json: UserSerializer.new(user))
          else
            render(json: { errors: user.errors }, status: 422)
          end
        end

        private

        def user_params
          params.to_unsafe_h[:data]
        end
      end
    end
  end
end
