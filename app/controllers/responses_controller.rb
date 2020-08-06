class ResponsesController < ApplicationController
  def index
    @response = Response.all
  end

  def new
    @response = Response.new
  end

  def create
    @response = current_user.responses.build(post_id: params[:post_id])
    @response.save
    redirect_to posts_path
  end

  private

  def response_params
    params.require(:response).permit(:content, :user_id, :post_id)
  end
end
