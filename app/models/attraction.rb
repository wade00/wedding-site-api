class Attraction < ApplicationRecord
  belongs_to :suggestable, polymorphic: true
end
