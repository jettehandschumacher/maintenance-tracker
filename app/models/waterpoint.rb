class Waterpoint < ApplicationRecord
  belongs_to :network
  has_many :tasks
  has_many :waterpoint_equipments
  has_many :equipments, through: :waterpoint_equipments

end
