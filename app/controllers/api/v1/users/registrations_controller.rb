module Api
  module V1
    module Users
      class RegistrationsController < ApplicationController

        def create
          user = User.new(user_params)
          if user.save
            head(:created)
          else
            head(:bad_request)
          end
        end

        private

        def user_params
          params.require(:user).permit(:email, :password, :password_confirmation)
        end
      end
    end
  end
end