class Report < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :reason, presence: true
end
