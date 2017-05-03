class EventTypeCheckListItem < ApplicationRecord
  belongs_to :check_list_item, foreign_key: :checklistitem_id
  belongs_to :event_type
end
