class User < ApplicationRecord
  has_many :memberships
  has_many :invitations
  has_many :events
  has_many :replies
  has_many :comments
  has_many :notifications
  has_many :reports
  has_many :messages
  has_many :votes

  validates :user_name, :first_name, :last_name, :address, :password, presence: true
  validates :user_name, uniqueness: true
  validates :email, presence: true, email: true
  validates :email, uniqueness: true

end

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end
