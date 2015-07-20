Rails.application.routes.draw do
  get 'sessions/create'

  get '/auth/github/callback', to: 'sessions#create'
  get  '/dashboard', to: 'dashboard#show'
  root 'home#show'
end
