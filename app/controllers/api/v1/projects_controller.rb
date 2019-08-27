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
        project = current_user.projects.build(project_params)
        if project.save
          render jsonapi: project, status: 201
        else
          render jsonapi_errors: project.errors, status: 422
        end
      end

      def update
        if authorize(@project).update(project_params)
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

      def project_params
        jsonapi_deserialize(params, only: :name)
      end
    end
  end
end
