class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_one :message, dependent: :destroy
  has_one :vote, dependent: :destroy
end
