class Event < ApplicationRecord
  belongs_to :user
  has_many :eventdates, dependent: :destroy
  has_many :invitations, dependent: :destroy
  has_many :event_files, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reports, dependent: :destroy

  validates :title, presence: true
end
