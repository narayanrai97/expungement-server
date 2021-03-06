Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :offenses, only: [:index]
    end
  end
  root 'offenses#index'
  resources :offenses,  only: [:index, :new, :create]
  devise_for :admin
  resources :offense_imports, only: [:new, :create]
end
