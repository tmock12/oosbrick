Rails.application.routes.draw do
  resources :lego_sets, only: [:new, :create]
  root 'lego_sets#index'
end
