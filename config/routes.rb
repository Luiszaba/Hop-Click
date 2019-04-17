Rails.application.routes.draw do
  resources :groups
  resources :objectives
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "application#welcome"

  devise_for :users, :controllers => { :registrations => "registrations", :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
