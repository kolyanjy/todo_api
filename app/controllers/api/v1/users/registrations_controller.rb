module Api
  module V1
    module Users
      class RegistrationsController < ApplicationController
        def create
          user = User.new(jsonapi_deserialize(params, only: %i[email password password_confirmation]))
          if user.save
            render jsonapi: user
          else
            render jsonapi_errors: user.errors, status: 422
          end
        end
      end
    end
  end
end
