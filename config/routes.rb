Rails.application.routes.draw do

  # Root of the site
  root 'plots#index'

  # User routes made with devise
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Account routes, they dip into devise's user pool
  get 'register' => 'users/accounts#new'
  get 'login' => 'users/accounts#login'
  get 'user/:id' => 'users/accounts#user'
  get 'accounts' => 'users/accounts#index'
  get 'account' => 'users/accounts#account'

  # Route to a list of the users' plots
  get 'account/list' => 'users/accounts#list'

  # Correspondent routes with nested Letter routes
  resources :correspondents do
    resources :letters do
      member do
        patch :has_read
      end
    end
  end

  # Route to plot coordinates through the user
  get 'coordinates/:x/:y' => 'users/accounts#coordinates'

  # Plot routes
  resources :plots do
    member do
      # Activate and Deactivate plots
      patch :activate
    end
  end

  # Coordinate and User Plot routes
  # get 'plot/:x' => 'plots#index'
  # get 'user/:id/plot' => 'plots#index'


end
