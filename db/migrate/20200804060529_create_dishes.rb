class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.string :cuisine
      t.text :special_dietery_details
      t.float :price
      t.time :preparation_time
      t.string :picture
      t.references :seller, null: false, foreign_key: true
      t.references :chef_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
