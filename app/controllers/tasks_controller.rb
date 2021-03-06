class TasksController < ApplicationController
  def index
    if current_user.technician == false
      @tasks = Task.all
    else
      @tasks = Task.where(technician: current_user)
    end
  end

  def show
    @task = Task.find(params[:id])
    @comment = Comment.new
    @markers = [{ lat: @task.network.latitude, lng: @task.network.longitude }]
  end

  def new
    @task = Task.new
    @technician = User.where(technician: true).all
  end

  def create
    @task = Task.new(task_params)
    @task.network = Waterpoint.find(task_params[:waterpoint_id]).network
    @task.manager = current_user
    if @task.save!
      redirect_to root_path(@root)
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

  def completed
    @task = Task.find(params[:id])
    @task.update_attribute(:complete_task, true)
    redirect_to root_path(@root)
  end

  private

  def task_params
    params.require(:task).permit(:start_date, :end_date, :extra_info, :service_id, :technician_id, :waterpoint_id, :equipment_id)
  end
end
