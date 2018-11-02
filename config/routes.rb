Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'
  resources :discussions do
  	resources :comments
  end
  resources :courses do
  	resources :comments
  end
  resources :categories
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
