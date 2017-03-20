Rails.application.routes.draw do
  resources :galleries do
    resources :pictures
  end
  resources :users

  root 'marketing#index'

  get "/login" => 'sessions#new', as: :login_path
  post "/login" => 'sessions#create'
  delete "/logout" => 'sessions#destroy', as: :logout
  get '/galleries/:id/share' => 'share#new', as: :share_gallery
  post '/galleries/:id/share' => 'share#create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
