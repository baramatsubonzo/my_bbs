class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @responses = @post.responses
    @response = Response.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = '投稿しました！'
      redirect_to root_path
    else
      render 'posts/new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, { category_ids: [] })
  end
end
