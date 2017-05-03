class CreateCheckListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :check_list_items do |t|
      t.string :description
      t.integer :event_id

      t.timestamps
    end
  end
end
