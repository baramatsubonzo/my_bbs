class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def crete
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: "ユーザー「#{@user.name}」を登録しました"
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def index
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
