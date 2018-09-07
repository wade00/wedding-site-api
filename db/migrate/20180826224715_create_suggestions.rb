class CreateSuggestions < ActiveRecord::Migration[5.1]
  def change
    create_table :suggestions do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :neighborhood, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.text :url
      t.text :description
      t.string :price_range
      t.string :phone
      t.string :type

      t.timestamps
    end
  end
end
