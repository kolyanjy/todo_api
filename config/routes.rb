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
        end
      end
    end
  end
end
