class Network < ApplicationRecord
  has_many :waterpoints
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address
  has_many :tasks

  def complete_tasks
    tasks.where(complete_task: true).count
  end
end
