class CheckListItem < ApplicationRecord
  has_many :event_types, through: :event_types_check_list_items

  def completed?(user_id)
    CheckListItemUser.where(checked: "true", user_id: user_id, checklist_item_id: self.id).length > 0
  end
    # return true if you can find the user_id and self.id in the CheckListItemUser model
    # otherwise return false





  
end
