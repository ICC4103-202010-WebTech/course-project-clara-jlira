class Api::V1::EventFilesController < ApplicationController
  before_action :set_api_v1_event_file, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/event_files
  # GET /api/v1/event_files.json
  def index
    @api_v1_event_files = Api::V1::EventFile.all
  end

  # GET /api/v1/event_files/1
  # GET /api/v1/event_files/1.json
  def show
  end

  # GET /api/v1/event_files/new
  def new
    @api_v1_event_file = Api::V1::EventFile.new
  end

  # GET /api/v1/event_files/1/edit
  def edit
  end

  # POST /api/v1/event_files
  # POST /api/v1/event_files.json
  def create
    @api_v1_event_file = Api::V1::EventFile.new(api_v1_event_file_params)

    respond_to do |format|
      if @api_v1_event_file.save
        format.html { redirect_to @api_v1_event_file, notice: 'Event file was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_event_file }
      else
        format.html { render :new }
        format.json { render json: @api_v1_event_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/event_files/1
  # PATCH/PUT /api/v1/event_files/1.json
  def update
    respond_to do |format|
      if @api_v1_event_file.update(api_v1_event_file_params)
        format.html { redirect_to @api_v1_event_file, notice: 'Event file was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_event_file }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_event_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/event_files/1
  # DELETE /api/v1/event_files/1.json
  def destroy
    @api_v1_event_file.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_event_files_url, notice: 'Event file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_event_file
      @api_v1_event_file = Api::V1::EventFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_event_file_params
      params.require(:api_v1_event_file).permit(:index, :show)
    end
end
