class MessageBoxesController < ApplicationController
  before_action :set_message_box, only: [:show, :edit, :update, :destroy]

  # GET /message_boxes
  # GET /message_boxes.json
  def index
    @message_boxes = MessageBox.all
  end

  # GET /message_boxes/1
  # GET /message_boxes/1.json
  def show
  end

  # GET /message_boxes/new
  def new
    @message_box = MessageBox.new
  end

  # GET /message_boxes/1/edit
  def edit
  end

  # POST /message_boxes
  # POST /message_boxes.json
  def create
    @message_box = MessageBox.new(message_box_params)

    respond_to do |format|
      if @message_box.save
        format.html { redirect_to @message_box, notice: 'Message box was successfully created.' }
        format.json { render :show, status: :created, location: @message_box }
      else
        format.html { render :new }
        format.json { render json: @message_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_boxes/1
  # PATCH/PUT /message_boxes/1.json
  def update
    respond_to do |format|
      if @message_box.update(message_box_params)
        format.html { redirect_to @message_box, notice: 'Message box was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_box }
      else
        format.html { render :edit }
        format.json { render json: @message_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_boxes/1
  # DELETE /message_boxes/1.json
  def destroy
    @message_box.destroy
    respond_to do |format|
      format.html { redirect_to message_boxes_url, notice: 'Message box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_box
      @message_box = MessageBox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_box_params
      params.require(:message_box).permit(:content, :invitation_id)
    end
end
