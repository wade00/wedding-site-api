require "administrate/base_dashboard"

class ImageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    imageable: Field::Polymorphic,
    id: Field::Number,
    attachment_file_name: Field::String,
    attachment_file_size: Field::Number,
    attachment_content_type: Field::String,
    attachment_updated_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :imageable,
    :id,
    :attachment_file_name,
    :attachment_file_size,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :imageable,
    :id,
    :attachment_file_name,
    :attachment_file_size,
    :attachment_content_type,
    :attachment_updated_at,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :imageable,
    :attachment_file_name,
    :attachment_file_size,
    :attachment_content_type,
    :attachment_updated_at,
  ].freeze

  # Overwrite this method to customize how images are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(image)
  #   "Image ##{image.id}"
  # end
end
