Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "application#welcome"

  devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}

  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
end
