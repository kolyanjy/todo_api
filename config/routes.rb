Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :users do
        resource :session, only: %i[create destroy]
        resource :registration, only: :create
      end
      resources :projects, shallow: true do
        resources :tasks do
          member do
            patch 'position_up'
            patch 'position_down'
          end
          resources :comments, only: %i[index show destroy create]
        end
      end
      if Rails.configuration.upload_server == :s3
        mount ImageUploader.presign_endpoint(:cache), at: "/s3/params"
      else
        mount ImageUploader.upload_endpoint(:cache), at: "/images/upload"
      end
    end
  end
end
