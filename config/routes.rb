Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#home'

  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

end
