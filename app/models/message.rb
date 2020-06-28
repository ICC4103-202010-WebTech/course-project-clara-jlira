class Message < ApplicationRecord
  belongs_to :user
  belongs_to :invitation

  validates :message, presence: true
end
