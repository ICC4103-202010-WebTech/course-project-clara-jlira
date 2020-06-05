class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many :event_dates, dependent: :destroy
  has_many :invitations, dependent: :destroy
  has_many :event_files, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reports, dependent: :destroy

  accepts_nested_attributes_for :event_dates, allow_destroy: true
  has_one_attached :pictures
  has_many_attached :files
  has_many_attached :videos

  validates :title, presence: true
end
