Rails.application.routes.draw do

  resources :groups
  resources :objectives

  root "home#index"

# Devise routes
  devise_for :users, :controllers => {registrations: "registrations",
                                      omniauth_callbacks: "users/omniauth_callbacks",
                                      confirmations: "confirmations"}
  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
