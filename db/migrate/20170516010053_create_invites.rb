class CreateInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :invites do |t|
      t.string :user_email
      t.string :guest_email
      t.boolean :sent
      t.integer :user_id
      t.string :host
      t.string :location
      t.text :address
      t.string :city
      t.datetime :event_date_time
      t.text :message

      t.timestamps
    end
  end
end
