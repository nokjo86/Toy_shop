class UsersController < ApplicationController
  before_action :find_user, only:[:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
  end
  
  def show
  end
  
  def new
    @user = User.new
  end

  def create 
    # if user_params[:password_confirmation] = user_params[:password]
    #   user_params.delete[:password_confirmation]
    # else
    #   redirect_to new_user_path
    # end
    @user = User.create(user_params)
    redirect_to user_path(@user.id)
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
   @user.destroy
   redirect_to users_url
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
