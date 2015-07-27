Rails.application.routes.draw do
  root "appointments#index"
  devise_for :recruiters
  devise_for :users
  resources :appointments
end
