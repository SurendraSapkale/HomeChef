class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :contact_number
      t.string :street_address
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.text :your_food_preference
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
