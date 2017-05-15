class CheckListItemUser < ApplicationRecord
  belongs_to :check_list_item, foreign_key: :checklist_item_id
end
