class EventDatesController < ApplicationController
  before_action :set_event_date, only: [:show, :edit, :update, :destroy]
  before_action :set_event_id, only: [:index]
  # GET /event_dates
  # GET /event_dates.json
  def index
  end

  # GET /event_dates/1
  # GET /event_dates/1.json
  def show
  end

  # GET /event_dates/new
  def new
    @event_date = EventDate.new
  end

  # GET /event_dates/1/edit
  def edit
  end

  # POST /event_dates
  # POST /event_dates.json
  def create
    @event_date = EventDate.new(event_date_params)

    respond_to do |format|
      if @event_date.save
        format.html { redirect_to @event_date, notice: 'Event date was successfully created.' }
        format.json { render :show, status: :created, location: @event_date }
      else
        format.html { render :new }
        format.json { render json: @event_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_dates/1
  # PATCH/PUT /event_dates/1.json
  def update
    respond_to do |format|
      if @event_date.update(event_date_params)
        format.html { redirect_to @event_date, notice: 'Event date was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_date }
      else
        format.html { render :edit }
        format.json { render json: @event_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_dates/1
  # DELETE /event_dates/1.json
  def destroy
    @event_date.destroy
    respond_to do |format|
      format.html { redirect_to event_dates_url, notice: 'Event date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_date
      @event_date = EventDate.find(params[:id])
    end
    def set_event_id
      @event_dates = EventDate.where('event_id = ?',params[:event_id])
    end
    # Only allow a list of trusted parameters through.
    def event_date_params
      params.require(:event_date).permit(:index, :show)
    end
end
