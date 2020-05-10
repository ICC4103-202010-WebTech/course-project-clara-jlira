class Api::V1::MessagesController < ApplicationController
  before_action :set_api_v1_message, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/messages
  # GET /api/v1/messages.json
  def index
    @api_v1_messages = Api::V1::Message.all
  end

  # GET /api/v1/messages/1
  # GET /api/v1/messages/1.json
  def show
  end

  # GET /api/v1/messages/new
  def new
    @api_v1_message = Api::V1::Message.new
  end

  # GET /api/v1/messages/1/edit
  def edit
  end

  # POST /api/v1/messages
  # POST /api/v1/messages.json
  def create
    @api_v1_message = Api::V1::Message.new(api_v1_message_params)

    respond_to do |format|
      if @api_v1_message.save
        format.html { redirect_to @api_v1_message, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_message }
      else
        format.html { render :new }
        format.json { render json: @api_v1_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/messages/1
  # PATCH/PUT /api/v1/messages/1.json
  def update
    respond_to do |format|
      if @api_v1_message.update(api_v1_message_params)
        format.html { redirect_to @api_v1_message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_message }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/messages/1
  # DELETE /api/v1/messages/1.json
  def destroy
    @api_v1_message.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_message
      @api_v1_message = Api::V1::Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_message_params
      params.require(:api_v1_message).permit(:index, :show)
    end
end
