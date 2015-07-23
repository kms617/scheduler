Rails.application.routes.draw do
  devise_for :recruiters
  root to: "home#index"
end
