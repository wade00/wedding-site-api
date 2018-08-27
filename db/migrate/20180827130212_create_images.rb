class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :attachment_file_name
      t.integer :attachment_file_size
      t.string :attachment_content_type
      t.datetime :attachment_updated_at
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
