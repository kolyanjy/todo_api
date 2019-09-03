module Docs
  module V1
    module Projects
      extend Dox::DSL::Syntax

      document :api do
        resource 'Projects' do
          endpoint '/projects'
          group 'Projects'
        end
      end

      document :index do
        action 'Get projects' do
          path '/api/v1/projects'
          verb 'GET'
        end
      end

      document :show do
        action 'Get project' do
          path '/api/v1/projects/:id'
          verb 'GET'
        end
      end

      document :create do
        action 'Create a project' do
          path '/api/v1/projects'
          verb 'POST'
        end
      end

      document :update do
        action 'Update a project' do
          path '/api/v1/projects/:id'
          verb 'PUT'
        end
      end

      document :destroy do
        action 'Delete a project' do
          path '/api/v1/projects/:id'
          verb 'DELETE'
        end
      end
    end
  end
end
