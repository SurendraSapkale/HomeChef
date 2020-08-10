class Seller < ApplicationRecord
  belongs_to :chef_profile
  has_many :dishes
  has_many :buyers_sellers
  has_and_belongs_to_many :buyers
end
