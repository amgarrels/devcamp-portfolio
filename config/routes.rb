Rails.application.routes.draw do
  root to: 'pages#home'

  resources :portfolios, except: [:show]
  resources :blogs

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

end
