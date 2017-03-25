class UsersController < ApplicationController
skip_before_action :require_login, only: [:new, :create]

  def create
    user = User.create user_params
    redirect_to :pictures
  end

  def new
      render 'users/register'
  end

  def update
    # @user = User.update(params[:avatar])
    @user = User.find(params[:id])
    @user.avatar = user_params[:avatar]
    @user.save
    redirect_to @user

  end


  def edit
    @user = User.find(params[:id])
      render 'users/show'
  end


  def show
    @user = User.find(params[:id])
      render 'users/show'
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :avatar)
    end
end
