class Task < ApplicationRecord
  belongs_to :manager
  belongs_to :technician
  belongs_to :equipment
  belongs_to :waterpoint
  belongs_to :network
end
