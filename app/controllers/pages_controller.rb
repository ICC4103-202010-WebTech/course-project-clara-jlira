class PagesController < ApplicationController
  def home
    set_event_info
  end

  private
  def set_event_info
    @events = Event.where.not(state: 'Closed')
    @event_users = User.joins(:events)
    @event_organizations = Organization.joins(:events)
    @event_dates = EventDate.joins(:event)
  end
end
