class FollowersController < ApplicationController
  def create
    user = User.find params[:user_id]

    user.followers.push current_user

    redirect_to params[:return_to]
  end
end
