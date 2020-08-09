class CreateChefProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :chef_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :contact_number
      t.string :street_address
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.text :cooking_speciality
      t.integer :cooking_capacity
      t.time :food_pick_up_timings
      t.string :picture
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
