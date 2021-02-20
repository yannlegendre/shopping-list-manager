Rails.application.routes.draw do
  devise_for :users

  root "ingredients#index"

  get '/run', to: 'pages#run'

  resources :ingredients, only: %i[create update destroy index] do
    post :toggle_shortage, on: :member
  end
end
