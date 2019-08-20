module Api
  module V1
    module Users
      class LoginsController < ApplicationController
        include TakeDataConcern
        before_action :authorize_by_access_header!, only: :destroy

        def create
          user = User.find_by(email: data_params[:email])
          if user&.authenticate(data_params[:password])
            payload = { user_id: user.id }
            session = JWTSessions::Session.new(payload: payload)
            render(json: { meta: session.login })
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
