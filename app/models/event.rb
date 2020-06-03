class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many :event_dates, dependent: :destroy
  has_many :invitations, dependent: :destroy
  has_many :event_files, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reports, dependent: :destroy

  has_one_attached :picture

  validates :title, presence: true
end
