class Event < ApplicationRecord
  has_many :images
  has_many :rsvps
  # has_many :rsvp_invites, through: :rsvps
end
