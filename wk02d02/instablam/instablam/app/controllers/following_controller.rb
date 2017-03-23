class FollowingController < ApplicationController
  def create
    
    user = User.find params[:user_id]

    user1.following.push user2

   redirect_to picture
  end
end
