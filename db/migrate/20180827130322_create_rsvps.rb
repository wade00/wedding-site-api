class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.references :event, foreign_key: true
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
