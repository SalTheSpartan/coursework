class LikesController < ApplicationController
  def create
    user = User.find 1
    picture  = Picture.find params[:picture_id]

    user.liked.push picture

    redirect_to picture
  end
end
