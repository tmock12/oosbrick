Rails.application.routes.draw do
  resources :lego_sets, only: [:new, :create, :edit, :update] do
    get 'approve', on: :member
  end
  root 'lego_sets#index'

  get 'sign-in', to: 'sessions#new'
  resource :sessions, only: [:create]

  resource :admins, only: :show
end
