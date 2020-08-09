json.extract! chef_profile, :id, :first_name, :last_name, :email, :contact_number, :street_address, :suburb, :state, :postcode, :cooking_speciality, :cooking_capacity, :food_pick_up_timings, :picture, :user_id, :created_at, :updated_at
json.url chef_profile_url(chef_profile, format: :json)
