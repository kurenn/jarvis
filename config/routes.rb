Rails.application.routes.draw do
  resources :queries, only: %i[new create show]

  root to: 'queries#new'
end
