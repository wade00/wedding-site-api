Rails.application.routes.draw do
  namespace :admin do
    resources :accommodations
    resources :suggestions
    resources :events
    resources :images
    resources :neighborhoods
    resources :rsvps
    resources :rsvp_invites
    resources :tags
    resources :attractions

    root to: "accommodations#index"
  end

  resources :rsvps
  resources :attractions
  resources :accommodations
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
