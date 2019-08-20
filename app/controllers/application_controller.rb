class ApplicationController < ActionController::API
  include JWTSessions::RailsAuthorization
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_found
    head(:not_found)
  end

  def not_authorized
    head(:unauthorized)
  end
end
