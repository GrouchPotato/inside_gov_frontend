InsideGovFrontend::Application.routes.draw do
  resources :topics, only: [:index, :show]
end
