Rails.application.routes.draw do
  root "appointments#index"
  devise_for :recruiters
  devise_for :users

  resources :appointments do
    devise_for :users
  end
  namespace :recruiter do
    resources :appointments
  end
end
