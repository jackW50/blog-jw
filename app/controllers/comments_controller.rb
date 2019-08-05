class CommnetsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)

    render json: @comment if @comment.save
  end

  def destroy
    comment = Comment.find_by(id: params[:id])

    comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :post_id, :user_id)
end
