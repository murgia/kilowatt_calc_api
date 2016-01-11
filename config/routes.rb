Rails.application.routes.draw do
  resources :appliances, only: [:index, :show]

  resources :electcalcs, only: [:index, :show, :create]
end
