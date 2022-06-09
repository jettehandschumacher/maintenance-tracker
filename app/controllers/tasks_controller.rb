class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.network = Waterpoint.find(task_params[:waterpoint_id]).network
    @task.manager = current_user
    if @task.save!
      redirect_to tasks_path(@tasks)
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to @task
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:start_date, :end_date, :extra_info, :service_id, :technician_id, :waterpoint_id, :equipment_id)
  end
end
