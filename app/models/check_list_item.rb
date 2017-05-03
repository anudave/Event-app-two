class CheckListItem < ApplicationRecord
  has_many :event_types, through: :event_types_check_list_items
end
