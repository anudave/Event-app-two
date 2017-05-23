class AddCustomFontColumntoInvites < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :custom_font, :string
  end
end
