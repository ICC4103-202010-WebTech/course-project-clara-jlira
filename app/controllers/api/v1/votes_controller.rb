class Api::V1::VotesController < ApplicationController
  before_action :set_api_v1_vote, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/votes
  # GET /api/v1/votes.json
  def index
    @api_v1_votes = Api::V1::Vote.all
  end

  # GET /api/v1/votes/1
  # GET /api/v1/votes/1.json
  def show
  end

  # GET /api/v1/votes/new
  def new
    @api_v1_vote = Api::V1::Vote.new
  end

  # GET /api/v1/votes/1/edit
  def edit
  end

  # POST /api/v1/votes
  # POST /api/v1/votes.json
  def create
    @api_v1_vote = Api::V1::Vote.new(api_v1_vote_params)

    respond_to do |format|
      if @api_v1_vote.save
        format.html { redirect_to @api_v1_vote, notice: 'Vote was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_vote }
      else
        format.html { render :new }
        format.json { render json: @api_v1_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/votes/1
  # PATCH/PUT /api/v1/votes/1.json
  def update
    respond_to do |format|
      if @api_v1_vote.update(api_v1_vote_params)
        format.html { redirect_to @api_v1_vote, notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_vote }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/votes/1
  # DELETE /api/v1/votes/1.json
  def destroy
    @api_v1_vote.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_vote
      @api_v1_vote = Api::V1::Vote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_vote_params
      params.require(:api_v1_vote).permit(:index, :show)
    end
end
