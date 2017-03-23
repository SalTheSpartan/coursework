Rails.application.routes.draw do

  # get 'pictures' , to: 'pictures#index'
  # get 'pictures/:id/show' , to: 'pictures#show'
  # get 'pictures/new' , to: 'pictures#new'

  resource :sessions, only: [:create, :new]

  get '/logout' , to: 'sessions#destroy'

  resources :users do
    resources :followers, only: [:create, :delete]

  end

  resources :pictures do
    resources :comments, only: [:create]
    resources :likes, only: [:create]

  end
  # post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'static#home'

end
