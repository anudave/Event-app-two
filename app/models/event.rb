class Event < ApplicationRecord
  belongs_to :event_type
  belongs_to :user
  has_many :guest_lists
end
