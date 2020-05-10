class Api::V1::InvitationsController < ApplicationController
  before_action :set_api_v1_invitation, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/invitations
  # GET /api/v1/invitations.json
  def index
    @api_v1_invitations = Api::V1::Invitation.all
  end

  # GET /api/v1/invitations/1
  # GET /api/v1/invitations/1.json
  def show
  end

  # GET /api/v1/invitations/new
  def new
    @api_v1_invitation = Api::V1::Invitation.new
  end

  # GET /api/v1/invitations/1/edit
  def edit
  end

  # POST /api/v1/invitations
  # POST /api/v1/invitations.json
  def create
    @api_v1_invitation = Api::V1::Invitation.new(api_v1_invitation_params)

    respond_to do |format|
      if @api_v1_invitation.save
        format.html { redirect_to @api_v1_invitation, notice: 'Invitation was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_invitation }
      else
        format.html { render :new }
        format.json { render json: @api_v1_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/invitations/1
  # PATCH/PUT /api/v1/invitations/1.json
  def update
    respond_to do |format|
      if @api_v1_invitation.update(api_v1_invitation_params)
        format.html { redirect_to @api_v1_invitation, notice: 'Invitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_invitation }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/invitations/1
  # DELETE /api/v1/invitations/1.json
  def destroy
    @api_v1_invitation.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_invitations_url, notice: 'Invitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_invitation
      @api_v1_invitation = Api::V1::Invitation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_invitation_params
      params.require(:api_v1_invitation).permit(:index, :show)
    end
end
