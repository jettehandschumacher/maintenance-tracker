class Equipment < ApplicationRecord
  has_many :waterpoint_equipments
  has_many :waterpoints, through: :waterpoint_equipments
  has_many :tasks
  has_many :service_equipments
  has_many :services, through: :service_equipments
end
