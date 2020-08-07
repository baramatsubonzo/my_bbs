class ResponsesController < ApplicationController
  before_action :set_post

  def new
  end

  def create
    binding.pry
    @post.responses.create! responses_params
    redirect_to @post
  end

  def destroy
    @post.responses.destroy params[:id]
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def responses_params
    params.required(:response).permit(:content)
  end
end
