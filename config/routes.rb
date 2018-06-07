Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root to: 'pages#home'


  resources :funds do
    resources :fund_items, only: [:new, :create, :edit, :update, :destroy]
    resources :memberships, only: [:new, :create, :destroy]
    resources :messages, only: [:create]
  end

 resources :coins, only: [:create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "about", to: "pages#about"
  get "help", to: "pages#help"
  get "search", to: "pages#search"

  end



