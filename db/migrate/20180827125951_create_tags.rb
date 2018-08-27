class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :suggestion, foreign_key: true
      t.string :label

      t.timestamps
    end
  end
end
