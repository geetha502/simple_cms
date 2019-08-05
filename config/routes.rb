Rails.application.routes.draw do
  get 'public/index'
  devise_for :admin_users
  get 'sections/index'
  get 'section/index'
  get 'pages/index'
  get 'page/index'
  get 'authors/index'
  root 'public#index'
  get 'subjects/index'
  get 'home/index'
  resources :subjects
  resources :pages
  resources :sections
  resources :public



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
