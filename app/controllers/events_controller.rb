class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    if params[:user_id]
      set_user_id
    else
      set_event_info
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event_users = User.all
    @event_organizations = Organization.joins(:events)
    @event_dates = EventDate.joins(:event)
    set_invitations_info
    set_comments_info
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @event.event_dates.build
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, alert: 'Event can\'t be updated.' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { redirect_to edit_event_path(params[:id]), alert: 'Event can\'t be updated.'}
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      if request.referer.include?("/admin")
        format.html { redirect_to admin_events_admin_url, notice: 'Event was successfully destroyed.' }
      else
        format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      end
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  def set_user_id
    @events = Event.where('user_id = ?',params[:user_id])
  end

  def set_event_info
    @events = Event.where.not(state: 'Closed')
    @event_users = User.joins(:events)
    @event_organizations = Organization.joins(:events)
    @event_dates = EventDate.joins(:event)
  end
  def set_invitations_info
    @invitations = Invitation.where('event_id = ?',params[:id])
  end
  def set_comments_info
    @comments = Comment.where('event_id = ?',params[:id])
  end
  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(
        :title, :description, :location, :state, :private_event,
        :organization_event, :user_id, :organization_id, :picture, videos:[], files_things:[],
        event_dates_attributes:[:id, :event_option, :final_date, :event_id,:_destroy]
    )
  end
end
