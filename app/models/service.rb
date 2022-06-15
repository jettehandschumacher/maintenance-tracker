class Service < ApplicationRecord
  has_many :service_equipments
  has_many :equipments, through: :service_equipments
end
