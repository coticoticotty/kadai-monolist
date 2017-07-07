class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user - User.find(params[:id])
    
    if @user.save
      flash[:success] = "ユーザー登録に失敗しました。"
      redirect_to @user
    else
      flash.now[:danger] = "ユーザーの登録に失敗しました。"
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
