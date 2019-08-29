module Docs
  module V1
    module Tasks
      extend Dox::DSL::Syntax

      document :api do
        resource 'Tasks' do
          endpoint '/tasks'
          group 'Tasks'
        end
      end

      document :index do
        action 'Get tasks' do
          path '/api/v1/projects/:project_id/tasks'
          verb 'GET'
        end
      end

      document :show do
        action 'Get task' do
          path '/api/v1/tasks/:id'
          verb 'GET'
        end
      end

      document :create do
        action 'Create a task' do
          path '/api/v1/projects/:project_id/tasks'
          verb 'POST'
        end
      end

      document :update do
        action 'Update a task' do
          path '/api/v1/tasks/:id'
          verb 'PUT'
        end
      end

      document :complete do
        action 'Complete a task' do
          path '/api/v1/tasks/:id/complete'
          verb 'PATCH'
        end
      end

      document :position_up do
        action 'Change up position of task' do
          path '/api/v1/tasks/:id/position_up'
          verb 'PATCH'
        end
      end

      document :position_down do
        action 'Change down position of task' do
          path '/api/v1/tasks/:id/position_up'
          verb 'PATCH'
        end
      end

      document :destroy do
        action 'Delete a task' do
          path '/api/v1/tasks/:id'
          verb 'DELETE'
        end
      end
    end
  end
end
