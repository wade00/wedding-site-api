class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :neighborhood, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.text :description

      t.timestamps
    end
  end
end
