class User < ApplicationRecord
  has_secure_password
  has_many :events
  has_many :invites
  has_many :guest_lists, through: :events

end
