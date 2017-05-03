class EventType < ApplicationRecord
  has_many :events
  has_many :event_type_check_list_items
  has_many :check_list_items, through: :event_type_check_list_items
end
