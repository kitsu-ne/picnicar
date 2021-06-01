Rails.application.routes.draw do
  root to:'picnicars#index'
  resources :picnicars
end
