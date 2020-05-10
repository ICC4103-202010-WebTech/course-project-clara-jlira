class Api::V1::ReportsController < ApplicationController
  before_action :set_api_v1_report, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/reports
  # GET /api/v1/reports.json
  def index
    @api_v1_reports = Api::V1::Report.all
  end

  # GET /api/v1/reports/1
  # GET /api/v1/reports/1.json
  def show
  end

  # GET /api/v1/reports/new
  def new
    @api_v1_report = Api::V1::Report.new
  end

  # GET /api/v1/reports/1/edit
  def edit
  end

  # POST /api/v1/reports
  # POST /api/v1/reports.json
  def create
    @api_v1_report = Api::V1::Report.new(api_v1_report_params)

    respond_to do |format|
      if @api_v1_report.save
        format.html { redirect_to @api_v1_report, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_report }
      else
        format.html { render :new }
        format.json { render json: @api_v1_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/reports/1
  # PATCH/PUT /api/v1/reports/1.json
  def update
    respond_to do |format|
      if @api_v1_report.update(api_v1_report_params)
        format.html { redirect_to @api_v1_report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_report }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/reports/1
  # DELETE /api/v1/reports/1.json
  def destroy
    @api_v1_report.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_report
      @api_v1_report = Api::V1::Report.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_report_params
      params.require(:api_v1_report).permit(:index, :show)
    end
end
