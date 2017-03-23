class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)

    # get user
    #:picture_id
    # get picture
    user = User.find 1
    picture  = Picture.find params[:picture_id]
    comment.picture = picture
    comment.user = user
    comment.save
    # Rails magic to take us to the picture show
    redirect_to picture
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
