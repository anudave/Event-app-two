class CreateGuestLists < ActiveRecord::Migration[5.0]
  def change
    create_table :guest_lists do |t|
      t.string :name
      t.string :status
      t.integer :event_id

      t.timestamps
    end
  end
end
