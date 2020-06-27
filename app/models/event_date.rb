class EventDate < ApplicationRecord
  belongs_to :event
  has_many :votes, dependent: :destroy

  validates :event_option, uniqueness: true
  validates :event_option, presence: true
end
