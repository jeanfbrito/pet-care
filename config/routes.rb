Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pets#index'
  resources :pets do
    resources :medical_records
  end

  # API
  namespace :api do
    namespace :v1 do
      jsonapi_resources :pets
    end
  end
end
