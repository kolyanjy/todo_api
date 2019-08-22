module Api
  module V1
    module Users
      class LoginsController < ApplicationController
        include TakeDataConcern
        before_action :authorize_by_access_header!, only: :destroy

        def create
          user = User.find_by(jsonapi_deserialize(params, only: :email))
          if user&.authenticate(jsonapi_deserialize(params, only: :password)['password'])
            payload = { user_id: user.id }
            session = JWTSessions::Session.new(payload: payload)
            render(jsonapi: nil, meta: session.login)
          else
            head(:unauthorized)
          end
        end

        def destroy
          JWTSessions::Session.new(payload: payload).flush_by_access_payload
        end
      end
    end
  end
end
