class Api::V1::OrganizationsController < ApplicationController
  before_action :set_api_v1_organization, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/organizations
  # GET /api/v1/organizations.json
  def index
    @api_v1_organizations = Api::V1::Organization.all
  end

  # GET /api/v1/organizations/1
  # GET /api/v1/organizations/1.json
  def show
  end

  # GET /api/v1/organizations/new
  def new
    @api_v1_organization = Api::V1::Organization.new
  end

  # GET /api/v1/organizations/1/edit
  def edit
  end

  # POST /api/v1/organizations
  # POST /api/v1/organizations.json
  def create
    @api_v1_organization = Api::V1::Organization.new(api_v1_organization_params)

    respond_to do |format|
      if @api_v1_organization.save
        format.html { redirect_to @api_v1_organization, notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_organization }
      else
        format.html { render :new }
        format.json { render json: @api_v1_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/organizations/1
  # PATCH/PUT /api/v1/organizations/1.json
  def update
    respond_to do |format|
      if @api_v1_organization.update(api_v1_organization_params)
        format.html { redirect_to @api_v1_organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_organization }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/organizations/1
  # DELETE /api/v1/organizations/1.json
  def destroy
    @api_v1_organization.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_organization
      @api_v1_organization = Api::V1::Organization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_organization_params
      params.require(:api_v1_organization).permit(:index, :show)
    end
end
