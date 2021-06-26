Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to:'picnicars#index'
  resources :picnicars, :owners
end
