class Api::V1::NotificationsController < ApplicationController
  before_action :set_api_v1_notification, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/notifications
  # GET /api/v1/notifications.json
  def index
    @api_v1_notifications = Api::V1::Notification.all
  end

  # GET /api/v1/notifications/1
  # GET /api/v1/notifications/1.json
  def show
  end

  # GET /api/v1/notifications/new
  def new
    @api_v1_notification = Api::V1::Notification.new
  end

  # GET /api/v1/notifications/1/edit
  def edit
  end

  # POST /api/v1/notifications
  # POST /api/v1/notifications.json
  def create
    @api_v1_notification = Api::V1::Notification.new(api_v1_notification_params)

    respond_to do |format|
      if @api_v1_notification.save
        format.html { redirect_to @api_v1_notification, notice: 'Notification was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_notification }
      else
        format.html { render :new }
        format.json { render json: @api_v1_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/notifications/1
  # PATCH/PUT /api/v1/notifications/1.json
  def update
    respond_to do |format|
      if @api_v1_notification.update(api_v1_notification_params)
        format.html { redirect_to @api_v1_notification, notice: 'Notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_notification }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/notifications/1
  # DELETE /api/v1/notifications/1.json
  def destroy
    @api_v1_notification.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_notifications_url, notice: 'Notification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_notification
      @api_v1_notification = Api::V1::Notification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_notification_params
      params.require(:api_v1_notification).permit(:index, :show)
    end
end
