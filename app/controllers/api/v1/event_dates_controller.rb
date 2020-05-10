class Api::V1::EventDatesController < ApplicationController
  before_action :set_api_v1_event_date, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/event_dates
  # GET /api/v1/event_dates.json
  def index
    @api_v1_event_dates = Api::V1::EventDate.all
  end

  # GET /api/v1/event_dates/1
  # GET /api/v1/event_dates/1.json
  def show
  end

  # GET /api/v1/event_dates/new
  def new
    @api_v1_event_date = Api::V1::EventDate.new
  end

  # GET /api/v1/event_dates/1/edit
  def edit
  end

  # POST /api/v1/event_dates
  # POST /api/v1/event_dates.json
  def create
    @api_v1_event_date = Api::V1::EventDate.new(api_v1_event_date_params)

    respond_to do |format|
      if @api_v1_event_date.save
        format.html { redirect_to @api_v1_event_date, notice: 'Event date was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_event_date }
      else
        format.html { render :new }
        format.json { render json: @api_v1_event_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/event_dates/1
  # PATCH/PUT /api/v1/event_dates/1.json
  def update
    respond_to do |format|
      if @api_v1_event_date.update(api_v1_event_date_params)
        format.html { redirect_to @api_v1_event_date, notice: 'Event date was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_event_date }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_event_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/event_dates/1
  # DELETE /api/v1/event_dates/1.json
  def destroy
    @api_v1_event_date.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_event_dates_url, notice: 'Event date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_event_date
      @api_v1_event_date = Api::V1::EventDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_event_date_params
      params.require(:api_v1_event_date).permit(:index, :show)
    end
end
