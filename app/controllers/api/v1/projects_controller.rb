module Api
  module V1
    class ProjectsController < ApplicationController
      before_action :authorize_by_access_header!
      before_action :find_project, except: %i[index create]

      def index
        render jsonapi: policy_scope(Project), status: 200
      end

      def show
        render jsonapi: authorize(@project), status: 200
      end

      def create
        parsed_params = jsonapi_deserialize(params)
        authorize project = Project.new(name: parsed_params['name'],user_id: payload['user_id'])
        if project.save
          render jsonapi: project, status: 201
        else
          render jsonapi_errors: project.errors, status: 422
        end
      end

      def update
        if authorize(@project).update(jsonapi_deserialize(params, only: :name))
          @project.save
          render jsonapi: @project, status: 200
        else
          render jsonapi_errors: @project.errors, status: 422
        end
      end

      def destroy
        authorize(@project).destroy
        head(:no_content)
      end

      private

      def find_project
        @project = Project.find_by!(id: params[:id])
      end
    end
  end
end
