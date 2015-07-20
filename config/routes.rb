Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :correspondents
  # resources :letters

  # resources :correspondents do
  #   resources :letters do

  #   end
  # end

  # resources :plots

  # Root of the site
  root 'correspondents#index'

end
