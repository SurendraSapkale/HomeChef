class CreateBuyerSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :buyer_sellers do |t|
      t.references :buyer, null: false, foreign_key: true
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
