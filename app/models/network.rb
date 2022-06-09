class Network < ApplicationRecord
  has_many :waterpoints
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
