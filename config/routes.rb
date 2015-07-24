Rails.application.routes.draw do
  root "appointments#index"
  devise_for :recruiters
  devise_for :users

  resources :appointments
  resources :user, only: [:show]
  namespace :recruiter do
    resources :appointments
  end
end
