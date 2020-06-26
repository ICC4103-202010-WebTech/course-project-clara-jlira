class SearchController < ApplicationController
  def search
    @events = Event.where("title LIKE ?","%#{params[:search]}%").or(Event.where("description LIKE ?","%#{params[:search]}%"))
    @event_users = User.joins(:events)
    @event_organizations = Organization.joins(:events)
    @event_dates = EventDate.joins(:event)
    @organizations = Organization.where("name LIKE ?","%#{params[:search]}%")
    @organization_membership = Membership.joins(:organization)
    @users = User.all
    @users_u = User.where("user_name LIKE ?","%#{params[:search]}%").or(User.where("first_name LIKE ?","%#{params[:search]}%"))
  end

  private
  def event_params
    params.require(:event).permit(
        :title, :description, :location, :state, :private_event,
        :organization_event, :user_id, :organization_id, :pictures, videos:[], files:[],
        event_dates_attributes:[:id, :event_option, :final_date, :event_id,:_destroy]
    )
  end
  def organization_params
    params.require(:organization).permit(:name,:description,:contact,:location)
  end
end
