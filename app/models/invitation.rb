class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_one :vote
end
