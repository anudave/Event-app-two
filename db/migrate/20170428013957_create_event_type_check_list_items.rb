class CreateEventTypeCheckListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :event_type_check_list_items do |t|
      t.integer :event_type_id
      t.integer :checklistitem_id

      t.timestamps
    end
  end
end
