class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @task = Task.find(params[:task_id])
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id
    @comment.task_id = @task.id
    if @comment.save
      redirect_to task_path(@task), notice: 'Comment has been posted.'
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
