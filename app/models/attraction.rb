class Attraction < Suggestion
  belongs_to :suggestable, polymorphic: true
end
