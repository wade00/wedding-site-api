class Accommodation < ApplicationRecord
  belongs_to :suggestable, polymorphic: true
end
