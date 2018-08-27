Rails.application.routes.draw do
  resources :rsvps
  resources :attractions
  resources :acommodations
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
