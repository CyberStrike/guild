Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'jobs#index'

  get 'dashboard' => 'pages#dashboard'

  resources :jobs

  devise_for :users
end
