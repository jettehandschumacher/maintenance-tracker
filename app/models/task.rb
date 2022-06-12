class Task < ApplicationRecord
  belongs_to :manager, class_name: "User"
  belongs_to :technician, class_name: "User"
  belongs_to :equipment
  belongs_to :waterpoint
  belongs_to :network
  belongs_to :service
  has_many :comments
  has_many :users, through: :comments
  # has_many_attached :photos

  def current_user_tasks(user)
    Task.where("tasks.technician_id = ?", user.id).order('created_at asc').first
  end

end
