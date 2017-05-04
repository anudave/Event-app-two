class RemoveEventTypeIdColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :check_list_items, :event_type_id, :integer
  end
end
