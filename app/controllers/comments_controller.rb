class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save!
      redirect_to task_path(@task)
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
