module Api
  module V1
    module Users
      class RegistrationsController < ApplicationController
        include TakeDataConcern
        def create
          user = User.new(data_params)
          if user.save
            render(json: UserSerializer.new(user))
          else
            render(json: { errors: user.errors }, status: 422)
          end
        end
      end
    end
  end
end
