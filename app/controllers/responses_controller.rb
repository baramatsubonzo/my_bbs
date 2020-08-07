class ResponsesController < ApplicationController
  before_action :set_post

  def create
    post = Post.find(params[:post_id])
    response = current_user.responses.build(response_params)
    response.post_id = post.id
    
    redirect_to post_path(post.id) if response.save
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def response_params
    params.require(:response).permit(:content)
  end
end
