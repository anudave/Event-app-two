class RenameColumnInCheckListItemTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :check_list_items, :event_id, :event_type_id
  end
end
