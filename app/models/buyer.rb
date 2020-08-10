class Buyer < ApplicationRecord
  belongs_to :profile
  has_many :dishes
  has_many :buyers_sellers
  has_and_belongs_to_many :sellers
end
