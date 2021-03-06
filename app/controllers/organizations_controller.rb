class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all
    set_organization_info
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    @events = Event.all
    set_event_info
    set_organization
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to @organization, notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @organization }
      else
        format.html { render :new }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    respond_to do |format|
      if request.referer.include?("/admin")
        format.html { redirect_to admin_organizations_admin_url, notice: 'Organization was successfully destroyed.' }
      else
        format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      end

      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
      @organization_membership = Membership.joins(:organization)
      @users = User.all
    end

  def set_organization_info
    @organization = Organization.all
    @organization_membership = Membership.joins(:organization)
    @users = User.all
  end

    def set_event_info
      @events = Event.where.not(state: 'Closed')
      @event_users = User.joins(:events)
      @event_organizations = Organization.joins(:events)
      @event_dates = EventDate.joins(:event)
    end
    # Only allow a list of trusted parameters through.
    def organization_params
      params.require(:organization).permit(:name,:description,:contact,:location)
    end
end
