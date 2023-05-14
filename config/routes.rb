Rails.application.routes.draw do
  resources :queries, only: %i[new create show]
end
