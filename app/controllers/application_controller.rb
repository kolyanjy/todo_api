class ApplicationController < ActionController::API
  include Pundit
  include JWTSessions::RailsAuthorization
  include JSONAPI::Deserialization

  rescue_from JWTSessions::Errors::Unauthorized do
    head(:unauthorized)
  end

  rescue_from ActiveRecord::RecordNotFound do
    head(:not_found)
  end

  rescue_from Pundit::NotAuthorizedError do
    head(:not_found)
  end

  private

  def jsonapi_serializer_class(resource, is_collection)
    JSONAPI::Rails.serializer_class(resource, is_collection)
  rescue NameError
    ApplicationSerializer
  end

  def current_user
    @current_user ||= User.find(payload['user_id'])
  end
end
