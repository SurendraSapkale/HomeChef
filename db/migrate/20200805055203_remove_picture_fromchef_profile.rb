class RemovePictureFromchefProfile < ActiveRecord::Migration[6.0]
  def change
    remove_column :chef_profiles, :picture, :string
  end
end