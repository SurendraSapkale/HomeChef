class Buyer < ApplicationRecord
  belongs_to :profile
  has_many :buyers_sellers
end
