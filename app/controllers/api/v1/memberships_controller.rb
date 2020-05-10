class Api::V1::MembershipsController < ApplicationController
  before_action :set_api_v1_membership, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/memberships
  # GET /api/v1/memberships.json
  def index
    @api_v1_memberships = Api::V1::Membership.all
  end

  # GET /api/v1/memberships/1
  # GET /api/v1/memberships/1.json
  def show
  end

  # GET /api/v1/memberships/new
  def new
    @api_v1_membership = Api::V1::Membership.new
  end

  # GET /api/v1/memberships/1/edit
  def edit
  end

  # POST /api/v1/memberships
  # POST /api/v1/memberships.json
  def create
    @api_v1_membership = Api::V1::Membership.new(api_v1_membership_params)

    respond_to do |format|
      if @api_v1_membership.save
        format.html { redirect_to @api_v1_membership, notice: 'Membership was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_membership }
      else
        format.html { render :new }
        format.json { render json: @api_v1_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/memberships/1
  # PATCH/PUT /api/v1/memberships/1.json
  def update
    respond_to do |format|
      if @api_v1_membership.update(api_v1_membership_params)
        format.html { redirect_to @api_v1_membership, notice: 'Membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_membership }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/memberships/1
  # DELETE /api/v1/memberships/1.json
  def destroy
    @api_v1_membership.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_memberships_url, notice: 'Membership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_membership
      @api_v1_membership = Api::V1::Membership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_membership_params
      params.require(:api_v1_membership).permit(:index, :show)
    end
end
