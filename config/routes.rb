Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :atendimentos
root to: 'pages#index'

end
