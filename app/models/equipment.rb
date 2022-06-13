class Equipment < ApplicationRecord
  has_many :waterpoint_equipments
  has_many :waterpoints, through: :waterpoint_equipments
end
