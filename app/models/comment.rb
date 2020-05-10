class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :reply , dependent: :destroy

  validates :content, presence: true
end
