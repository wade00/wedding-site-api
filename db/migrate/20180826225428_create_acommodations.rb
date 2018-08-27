class CreateAcommodations < ActiveRecord::Migration[5.1]
  def change
    create_table :acommodations do |t|
      t.boolean :discounted_rates_available, default: false

      t.timestamps
    end
  end
end
