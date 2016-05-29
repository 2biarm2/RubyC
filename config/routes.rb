Rails.application.routes.draw do

  devise_for :adms
  devise_for :users
  resources :users
  resources :atendimentos
  resources :adms
root to: 'pages#index'

end
