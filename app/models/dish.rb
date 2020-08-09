class Dish < ApplicationRecord
  belongs_to :seller
  belongs_to :chef_profile
  has_one_attached :picture
end
