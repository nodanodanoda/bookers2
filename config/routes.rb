Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  get 'home/about' => 'homes#about'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:show, :edit, :update, :index, :new, :create, :destroy]

end
