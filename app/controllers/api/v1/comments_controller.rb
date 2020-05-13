module API
  module V1
    class Api::V1::CommentsController < ApplicationController
      respond_to :json
      def index
        respond_with Comment.all
      end
      def show
        respond_with Comment.find(params[:id])
      end
    end
  end
end

