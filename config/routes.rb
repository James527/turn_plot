Rails.application.routes.draw do

  # Root of the site
  root 'users/accounts#index'

  # User routes made with devise
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Account routes, they dip into devise's user pool
  get 'user/:id' => 'users/accounts#user'
  get 'accounts' => 'users/accounts#index'
  get 'account' => 'users/accounts#account'

  resources :correspondents do
    resources :letters
  end

  # resources :plots

end
