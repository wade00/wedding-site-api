Rails.application.routes.draw do
  namespace :admin do
    resources :accommodations
    resources :attractions
    resources :events
    resources :images
    resources :neighborhoods
    resources :rsvps
    resources :rsvp_invites
    resources :subscribers
    resources :suggestions
    resources :tags

    root to: "accommodations#index"
  end

  resources :accommodations
  resources :attractions
  resources :events
  resources :rsvps
  resources :subscribers

  root to: "admin/subscribers#index"
end
