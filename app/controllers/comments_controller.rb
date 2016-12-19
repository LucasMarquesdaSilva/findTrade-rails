class CommentsController < ApplicationController
  before_filter :require_login

  def create
    @comment = Comment.new(comment_params)
    @comment.product_id = params[:product_id]
    @comment.user = current_user

    @comment.save

    redirect_to product_path(@comment.product)
  end

  def comment_params
    params.require(:comment).permit(:user_id, :body)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to product_path(@comment.product)
  end
  def update
  end
end
