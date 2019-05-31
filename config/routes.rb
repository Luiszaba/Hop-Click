Rails.application.routes.draw do

  resources :groups
  resources :objectives

  get 'objectives/:id/objective_data', to: 'objectives#objective_data'

  root "home#index"

# Devise routes
  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}
  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
