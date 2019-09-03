module Api
  module V1
    class CommentsController < ApiController
      before_action :find_task, only: %i[index create]
      before_action :find_comment, only: %i[destroy show]

      def index
        render jsonapi: authorize(@task).comments
      end

      def show
        render jsonapi: authorize(@comment)
      end

      def create
        comment = authorize(@task).comments.build(comment_params)
        if comment.save
          render jsonapi: comment, status: 201
        else
          render jsonapi_errors: comment.errors, status: 422
        end
      end

      def destroy
        authorize(@comment).destroy
      end

      private

      def find_task
        @task = Task.find_by!(id: params[:task_id])
      end

      def find_comment
        @comment = Comment.find_by!(id: params[:id])
      end

      def comment_params
        jsonapi_deserialize(params, only: %i[name image])
      end
    end
  end
end
