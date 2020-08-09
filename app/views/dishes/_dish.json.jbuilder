json.extract! dish, :id, :name, :description, :cuisine, :special_dietery_details, :price, :preparation_time, :picture, :seller_id, :chef_profile_id, :created_at, :updated_at
json.url dish_url(dish, format: :json)
