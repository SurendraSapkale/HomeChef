class Seller < ApplicationRecord
  belongs_to :chef_profile
  has_many :dishes
  has_many :buyers_sellers
end
