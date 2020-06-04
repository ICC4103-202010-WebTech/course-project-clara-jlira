class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :invitations, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :replies, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :reports, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :votes, dependent: :destroy

  has_one_attached :avatar


  validates :user_name, :first_name, :last_name, :address, :password, presence: true
  validates :user_name, uniqueness: true
  validates :email, presence: true, email: true
  validates :email, uniqueness: true

end

