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
    end
    mount ImageUploader.upload_endpoint(:cache) => "/images/upload"
  end
end
