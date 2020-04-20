class Organization < ApplicationRecord
  has_many :memberships
  has_many :organization_files
  has_many :events

  validates :name, presence: true
end
