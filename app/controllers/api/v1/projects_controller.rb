module Api
  module V1
    class ProjectsController < ApiController
      before_action :find_project, except: %i[index create]

      def index
        render jsonapi: policy_scope(Project)
      end

      def show
        render jsonapi: authorize(@project)
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
          render jsonapi: @project
        else
          render jsonapi_errors: @project.errors, status: 422
        end
      end

      def destroy
        authorize(@project).destroy
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
