class ResponsesController < ApplicationController
  def create
    @response = Response.new(response_params)
    @response.user_id = current_user.id
    if @response.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end

  end

  private

  def response_params
    params.require(:response).permit(:content)
  end
end
