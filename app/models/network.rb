class Network < ApplicationRecord
  has_many :waterpoints
  has_many :tasks
  has_many :services, through: :tasks

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def complete_tasks
    tasks.where(complete_task: true).count
  end
end
