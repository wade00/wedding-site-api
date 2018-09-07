class Suggestion < ApplicationRecord
  belongs_to :suggestable, polymorphic: true
  belongs_to :neighborhood
  has_many :images, as: :imageable
end
