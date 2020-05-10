class Api::V1::RepliesController < ApplicationController
  before_action :set_api_v1_reply, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/replies
  # GET /api/v1/replies.json
  def index
    @api_v1_replies = Api::V1::Reply.all
  end

  # GET /api/v1/replies/1
  # GET /api/v1/replies/1.json
  def show
  end

  # GET /api/v1/replies/new
  def new
    @api_v1_reply = Api::V1::Reply.new
  end

  # GET /api/v1/replies/1/edit
  def edit
  end

  # POST /api/v1/replies
  # POST /api/v1/replies.json
  def create
    @api_v1_reply = Api::V1::Reply.new(api_v1_reply_params)

    respond_to do |format|
      if @api_v1_reply.save
        format.html { redirect_to @api_v1_reply, notice: 'Reply was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_reply }
      else
        format.html { render :new }
        format.json { render json: @api_v1_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/replies/1
  # PATCH/PUT /api/v1/replies/1.json
  def update
    respond_to do |format|
      if @api_v1_reply.update(api_v1_reply_params)
        format.html { redirect_to @api_v1_reply, notice: 'Reply was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_reply }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/replies/1
  # DELETE /api/v1/replies/1.json
  def destroy
    @api_v1_reply.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_replies_url, notice: 'Reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_reply
      @api_v1_reply = Api::V1::Reply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_reply_params
      params.require(:api_v1_reply).permit(:index, :show)
    end
end
