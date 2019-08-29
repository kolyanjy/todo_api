module Api
  module V1
    class TasksController < ApiController
      before_action :find_task, except: %i[index create]
      before_action :find_project, only: %i[index create]

      def index
        render jsonapi: authorize(@project).tasks
      end

      def show
        render jsonapi: authorize(@task)
      end

      def create
        task = authorize(@project).tasks.build(task_params)
        if task.save
          render jsonapi: task, status: 201
        else
          render jsonapi_errors: task.errors, status: 422
        end
      end

      def update
        if authorize(@task).update(task_params)
          render jsonapi: @task
        else
          render jsonapi_errors: @task.errors, status: 422
        end
      end

      def destroy
        authorize(@task).destroy
      end

      def position_up
        authorize(@task).move_higher
        render jsonapi: @task
      end

      def position_down
        authorize(@task).move_lower
        render jsonapi: @task
      end

      private

      def find_task
        @task = Task.find_by!(id: params[:id])
      end

      def find_project
        @project = Project.find_by!(id: params[:project_id])
      end

      def task_params
        jsonapi_deserialize(params, only: %i[name deadline complete])
      end
    end
  end
end
