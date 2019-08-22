module Api
  module V1
    module Users
      class LoginsController < ApplicationController
        include TakeDataConcern
        before_action :authorize_by_access_header!, only: :destroy

        def create
          parsed_params = jsonapi_deserialize(params)
          user = User.find_by(parsed_params.slice('email'))
          if user&.authenticate(parsed_params['password'])
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
