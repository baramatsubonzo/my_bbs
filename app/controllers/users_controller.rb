class UsersController < ApplicationController
  skip_before_action :login_required, if: proc{action_name=="new" || action_name=="create"}

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id unless current_user
      redirect_to root_path, notice: "ユーザー「#{@user.name}」を登録しました"
    else
      render :new
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
