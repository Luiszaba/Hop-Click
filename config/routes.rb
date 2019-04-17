Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :groups
  resources :objectives
  root "application#welcome"

  devise_for :users, :controllers => {registrations: "registrations",
                                      omniauth_callbacks: "users/omniauth_callbacks",
                                      confirmations: "confirmations" }

  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
