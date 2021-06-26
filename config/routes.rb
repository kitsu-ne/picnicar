Rails.application.routes.draw do
  devise_for :owners
  devise_for :users

  devise_for :owners, controllers: {
    sessions:      'owners/sessions',
    passwords:     'owner/passwords',
    registrations: 'owners/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  
  root to:'picnicars#index'
  resources :picnicars
end
