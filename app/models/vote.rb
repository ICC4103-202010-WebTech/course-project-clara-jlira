class Vote < ApplicationRecord
  belongs_to :event_dates_box
  belongs_to :invitation
  belongs_to :user
end
