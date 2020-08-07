class ResponsesController < ApplicationController
  before_action :set_post

  def create
    post = Post.find(params[:post_id])
    response = current_user.responses.build(response_params)
    response.post_id = post.id
    response.save
    
    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def response_params
    params.require(:response).permit(:content)
  end
end
