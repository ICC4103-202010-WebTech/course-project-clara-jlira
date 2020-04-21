class Vote < ApplicationRecord
  belongs_to :eventdate
  belongs_to :invitation
  belongs_to :user
end
