class CreateCheckListItemUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :check_list_item_users do |t|
      t.integer :checklist_item_id
      t.integer :user_id
      t.boolean :checked

      t.timestamps
    end
  end
end
