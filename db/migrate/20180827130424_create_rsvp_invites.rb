class CreateRsvpInvites < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvp_invites do |t|
      t.string :response
      t.string :name
      t.string :email
      t.references :rsvp, foreign_key: true

      t.timestamps
    end
  end
end
