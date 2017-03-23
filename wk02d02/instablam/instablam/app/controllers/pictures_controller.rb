class PicturesController < ApplicationController
  def index
    @picture = Picture.all
    render :'pictures/index'
  end

  def show
    @picture = Picture.find(params[:id])

  end

  def destroy

    Picture.destroy params[:id]
    redirect_to :pictures
  end

  def create
    # @picture = Picture.find(params[:id])
    # @comment = Comment.new(params.require(:comment).permit(:content))
    # @picture.comments.push new_comment
    # @picture.save
    # redirect_to @picture
    @picture = Picture.new(params.require(:picture).permit(:img, :caption))
    @picture.save
    redirect_to @picture
  end

  def edit
    @picture = Picture.find(params[:id])
    @comment = Comment.new(params.require(:comment).permit(:content))
    @picture.comments.push new_comment
    @picture.save
    redirect_to @picture
  end

end
