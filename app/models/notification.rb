class Notification < ApplicationRecord
  belongs_to :user

  validates :notification, presence: true
end
