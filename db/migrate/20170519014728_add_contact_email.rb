class AddContactEmail < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :contact_email, :string
  end
end
