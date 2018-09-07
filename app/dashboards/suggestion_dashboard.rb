require "administrate/base_dashboard"

class SuggestionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    neighborhood: Field::BelongsTo,
    images: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    address: Field::String,
    city: Field::String,
    state: Field::String,
    zip_code: Field::String,
    latitude: Field::Number.with_options(decimals: 2),
    longitude: Field::Number.with_options(decimals: 2),
    url: Field::Text,
    description: Field::Text,
    price_range: Field::String,
    phone: Field::String,
    type: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :neighborhood,
    :images,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :neighborhood,
    :images,
    :id,
    :name,
    :address,
    :city,
    :state,
    :zip_code,
    :latitude,
    :longitude,
    :url,
    :description,
    :price_range,
    :phone,
    :type,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :neighborhood,
    :images,
    :name,
    :address,
    :city,
    :state,
    :zip_code,
    :latitude,
    :longitude,
    :url,
    :description,
    :price_range,
    :phone,
    :type,
  ].freeze

  # Overwrite this method to customize how suggestions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(suggestion)
  #   "Suggestion ##{suggestion.id}"
  # end
end
