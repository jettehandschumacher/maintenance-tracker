class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :user
  has_many_attached :photos
end
