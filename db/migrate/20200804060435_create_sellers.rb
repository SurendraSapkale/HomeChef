class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.references :chef_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
