Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :restaurants, only: [:show, :index] do
      resources :dishes, only: [:show, :index]
    end

    resources :dishes, only: [:show, :index] do
      resources :restaurants, only: [:show, :index]
    end
  end
end
