class ResponsesController < ApplicationController
  def index
    @response = Response.all
  end

  def new
    @response = Response.new
  end

  def create

  end

  private

  def response_params
    params.require(:response).permit(:content, :user_id, :post_id)
  end
end
