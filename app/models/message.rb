class Message < ApplicationRecord
  belongs_to :invitation

  validates :text, presence: true
end
