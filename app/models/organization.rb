class Organization < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :organization_files, dependent: :destroy
  has_many :events, dependent: :destroy

  validates :name, presence: true
end
