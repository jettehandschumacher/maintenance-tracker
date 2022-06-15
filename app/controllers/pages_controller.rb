class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tasks = Task.all
  end

  def statistics
    @tasks_completed = Task.group(:complete_task).count
    
    @tasks_completed[:Complete] = @tasks_completed[true]
    @tasks_completed[:Incomplete] = @tasks_completed[false]
    @tasks_completed.except!(true)
    @tasks_completed.except!(false)

    @tasks_per_month = Task.where(complete_task: true).group_by_month(:end_date).count
    p @tasks_per_month
    # @tasks_Task.group_by_month(:end_date).count
    @tasks_per_month = @tasks_per_month.transform_keys { |key| key.strftime("%b %Y") }

    @split_tasks_per_month = Task.group(:complete_task).group_by_month(:end_date).count
    p @split_tasks_per_month
    @split_tasks_per_month = @split_tasks_per_month.transform_keys { |key| [key[0] == true ? "Complete" : "Incomplete", key[1].strftime("%b %Y")] }
  end

  def presentation
    render layout: "special_layout"
  end
end


