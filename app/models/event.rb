class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many :event_dates_box
  has_many :invitations
  has_many :event_files
  has_many :comments
  has_many :reports

  validates :title, presence: true
end
