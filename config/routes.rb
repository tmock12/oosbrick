Rails.application.routes.draw do
  resources :lego_sets, only: [:new, :create, :edit, :update]
  root 'lego_sets#index'
end
