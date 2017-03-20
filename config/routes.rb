Rails.application.routes.draw do

  resources :galleries do
    resources :share, only: [:new, :create]
    resources :pictures do
      resources :share, only: [:new, :create]
    end
  end

  resources :users

  root 'marketing#index'

  get "/login" => 'sessions#new', as: :login_path
  post "/login" => 'sessions#create'
  delete "/logout" => 'sessions#destroy', as: :logout



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
