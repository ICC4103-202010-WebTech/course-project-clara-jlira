class Api::V1::OrganizationFilesController < ApplicationController
  before_action :set_api_v1_organization_file, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/organization_files
  # GET /api/v1/organization_files.json
  def index
    @api_v1_organization_files = Api::V1::OrganizationFile.all
  end

  # GET /api/v1/organization_files/1
  # GET /api/v1/organization_files/1.json
  def show
  end

  # GET /api/v1/organization_files/new
  def new
    @api_v1_organization_file = Api::V1::OrganizationFile.new
  end

  # GET /api/v1/organization_files/1/edit
  def edit
  end

  # POST /api/v1/organization_files
  # POST /api/v1/organization_files.json
  def create
    @api_v1_organization_file = Api::V1::OrganizationFile.new(api_v1_organization_file_params)

    respond_to do |format|
      if @api_v1_organization_file.save
        format.html { redirect_to @api_v1_organization_file, notice: 'Organization file was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_organization_file }
      else
        format.html { render :new }
        format.json { render json: @api_v1_organization_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/organization_files/1
  # PATCH/PUT /api/v1/organization_files/1.json
  def update
    respond_to do |format|
      if @api_v1_organization_file.update(api_v1_organization_file_params)
        format.html { redirect_to @api_v1_organization_file, notice: 'Organization file was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_organization_file }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_organization_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/organization_files/1
  # DELETE /api/v1/organization_files/1.json
  def destroy
    @api_v1_organization_file.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_organization_files_url, notice: 'Organization file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_organization_file
      @api_v1_organization_file = Api::V1::OrganizationFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_organization_file_params
      params.require(:api_v1_organization_file).permit(:index, :show)
    end
end
