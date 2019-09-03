module Api
  module V1
    class ApiController < ApplicationController
      before_action :authorize_by_access_header!
    end
  end
end
