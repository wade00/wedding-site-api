class CreateNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
