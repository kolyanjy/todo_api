Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :users do
        resource :login, only: %i[create destroy]
        resource :registration, only: :create
      end
      resources :projects
    end
  end
end
