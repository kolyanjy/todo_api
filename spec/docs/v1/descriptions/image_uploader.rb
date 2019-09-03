module Docs
  module V1
    module ImageUploader
      extend Dox::DSL::Syntax

      document :api do
        resource 'uploader' do
          endpoint '/api/v1/image/upload'
          group 'Uploaders'
        end
      end

      document :upload do
        action 'Upload a image' do
          path '/api/v1/image/upload'
          verb 'POST'
        end
      end
    end
  end
end
