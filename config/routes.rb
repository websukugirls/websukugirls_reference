Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'root#index'
  get 'rails', to: 'rails#index', as: 'rails'
  get 'js', to: 'js#index', as: 'js'
  get 'html', to: 'html#index', as: 'html'
  get 'css', to: 'css#index', as: 'css'
  get 'aws', to: 'aws#index', as: 'aws'
  get 'git', to: 'git#index', as: 'git'
  get 'userpage', to: 'users#userpage', as: 'userpage'
  resources :posts, param: :title
end
