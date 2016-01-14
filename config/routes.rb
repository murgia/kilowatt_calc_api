Rails.application.routes.draw do
  resources :appliances, only: [:index, :show]
  post "/electcalcs/:id", to: "electcalcs#createEstimates"
  resources :electcalcs, only: [:index, :show, :create]
end
