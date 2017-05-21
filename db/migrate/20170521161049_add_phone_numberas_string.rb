class AddPhoneNumberasString < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :phone_number, :string
  end
end
