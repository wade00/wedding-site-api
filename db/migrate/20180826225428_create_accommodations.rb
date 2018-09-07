class CreateAccommodations < ActiveRecord::Migration[5.1]
  def change
    create_table :accommodations do |t|
      t.boolean :discounted_rates_available, default: false

      t.timestamps
    end
  end
end
