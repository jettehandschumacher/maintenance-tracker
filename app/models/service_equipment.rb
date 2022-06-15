class ServiceEquipment < ApplicationRecord
  belongs_to :service
  belongs_to :equipment
end
