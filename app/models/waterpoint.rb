class Waterpoint < ApplicationRecord
  belongs_to :network
  has_many :tasks
end
