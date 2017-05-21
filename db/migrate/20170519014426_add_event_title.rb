class AddEventTitle < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :title, :string
  end
end
