Rails.application.routes.draw do
  devise_for :users
  root to:'picnicars#index'
  resources :picnicars
end
