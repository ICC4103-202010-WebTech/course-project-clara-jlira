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
    @event_users = User.joins(:events)
    @event_organizations = Organization.joins(:events)
    @event_dates = EventDate.joins(:event)
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
        format.html { render :new }
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
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
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
  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(
        :title, :description, :location, :state, :private_event,
        :organization_event, :user_id, :organization_id, :pictures, :videos, :files,
        event_dates_attributes:[:id,:event_option, :final_date, :event_id,:_destroy]
    )
  end
end
