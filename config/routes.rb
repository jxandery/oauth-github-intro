Rails.application.routes.draw do
  get 'sessions/create'
  get '/auth/github', as: :login
  delete '/logout', as: :logout, to: 'sessions#destroy'

  get '/auth/github/callback', to: 'sessions#create'
  get  '/dashboard', to: 'dashboard#show'
  root 'home#show'
end
