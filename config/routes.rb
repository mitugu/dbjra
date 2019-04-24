Rails.application.routes.draw do
  get 'syutubahyo/index'

  get 'bunseki/index'

  resources :kyis
  resources :cybs
  resources :ots
  resources :zkbs
  resources :zeds
  resources :ozs
  resources :ows
  resources :ous
  resources :kkas
  resources :kabs
  resources :joas
  resources :chas
  resources :bacs
  resources :jras
  root 'application#hello'
end
