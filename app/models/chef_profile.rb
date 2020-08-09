class ChefProfile < ApplicationRecord
  belongs_to :user
  has_one :seller
  has_many :dish
  has_one_attached  :picture
end
