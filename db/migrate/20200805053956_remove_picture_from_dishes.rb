class RemovePictureFromDishes < ActiveRecord::Migration[6.0]
  def change
    remove_column :dishes, :picture, :string
  end
end
