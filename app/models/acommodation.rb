class Acommodation < ApplicationRecord
  belongs_to :suggestable, polymorphic: true
end
