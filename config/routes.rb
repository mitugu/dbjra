Rails.application.routes.draw do
  resources :jras
  root 'application#hello'
end
