json.extract! profile, :id, :first_name, :last_name, :email, :contact_number, :street_address, :suburb, :state, :postcode, :your_food_preference, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
