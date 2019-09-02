module Docs
  module V1
    module Comments
      extend Dox::DSL::Syntax

      document :api do
        resource 'comments' do
          endpoint '/comments'
          group 'comments'
        end
      end

      document :index do
        action 'Get comments' do
          path '/api/v1/projects/:project_id/comments'
          verb 'GET'
        end
      end

      document :show do
        action 'Get comment' do
          path '/api/v1/comments/:id'
          verb 'GET'
        end
      end

      document :create do
        action 'Create a comment' do
          path '/api/v1/projects/:project_id/comments'
          verb 'POST'
        end
      end

      document :destroy do
        action 'Delete a comment' do
          path '/api/v1/comments/:id'
          verb 'DELETE'
        end
      end
    end
  end
end
