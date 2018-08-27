class CreateAttractions < ActiveRecord::Migration[5.1]
  def change
    create_table :attractions do |t|
      t.string :wait_time

      t.timestamps
    end
  end
end
