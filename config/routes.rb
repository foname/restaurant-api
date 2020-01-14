Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :restaurants, only: [:show, :index] do
      resources :dishes, only: [:show, :index]
    end
    resources :dishes, only: [:show, :index] do
      resources :restaurants, only: [:show, :index]
    end
  end
end
