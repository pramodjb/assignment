Rails.application.routes.draw do
  root 'home#index'

  resources :posts
  devise_for :users, controllers: {registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    devise_scope :user do 
      get "auth/:provider/callback" => "users/sessions#create" 
      get 'auth/failure', to: redirect('/')
      get 'signout', to: 'users/sessions#destroy', as: 'signout'
    end
end
