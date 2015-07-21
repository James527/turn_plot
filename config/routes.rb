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

  # Correspondent routes with nested Letter routes
  resources :correspondents do
    resources :letters do
      member do
        patch :read
      end
    end
  end

  # Plot routes
  resources :plots
  # Activate this plot

  # Coordinate and User Plot routes
  # get 'plot/:x' => 'plots#index'
  # get 'user/:id/plot' => 'plots#index'

end
