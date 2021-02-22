Rails.application.routes.draw do
  devise_for :users

  root "ingredients#index"

  get '/run', to: 'pages#run'

  get '/list', to: 'lists#current_list', as: :current_list

  resources :ingredients, only: %i[create update destroy index] do
    post :toggle_shortage, on: :member
  end

  resources :items, only: %i[] do
    post :toggle_checked, on: :member
  end

  resources :lists, only: %i[create]
end
