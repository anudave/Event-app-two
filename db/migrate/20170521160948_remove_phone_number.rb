class RemovePhoneNumber < ActiveRecord::Migration[5.0]
  def change
    remove_column :invites, :phone_number, :integer

  end
end
