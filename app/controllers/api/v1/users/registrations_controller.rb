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
          data = params.to_unsafe_h[:data]
          {
            email: data[:email],
            password: data[:password],
            password_confirmation: data[:password_confirmation]
          }
        end
      end
    end
  end
end
