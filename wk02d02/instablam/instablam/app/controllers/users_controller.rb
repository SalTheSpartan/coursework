class UsersController < ApplicationController


  def create
    user = User.create user_params

    redirect_to :pictures
  end

  def new
      render 'users/register'
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
