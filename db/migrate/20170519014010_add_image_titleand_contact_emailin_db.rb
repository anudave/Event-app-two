class AddImageTitleandContactEmailinDb < ActiveRecord::Migration[5.0]
  def change
    add_column :invites, :background_image, :string
  end
end
