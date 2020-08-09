require "application_system_test_case"

class ChefProfilesTest < ApplicationSystemTestCase
  setup do
    @chef_profile = chef_profiles(:one)
  end

  test "visiting the index" do
    visit chef_profiles_url
    assert_selector "h1", text: "Chef Profiles"
  end

  test "creating a Chef profile" do
    visit chef_profiles_url
    click_on "New Chef Profile"

    fill_in "Contact number", with: @chef_profile.contact_number
    fill_in "Cooking capacity", with: @chef_profile.cooking_capacity
    fill_in "Cooking speciality", with: @chef_profile.cooking_speciality
    fill_in "Email", with: @chef_profile.email
    fill_in "First name", with: @chef_profile.first_name
    fill_in "Food pick up timings", with: @chef_profile.food_pick_up_timings
    fill_in "Last name", with: @chef_profile.last_name
    fill_in "Picture", with: @chef_profile.picture
    fill_in "Postcode", with: @chef_profile.postcode
    fill_in "State", with: @chef_profile.state
    fill_in "Street address", with: @chef_profile.street_address
    fill_in "Suburb", with: @chef_profile.suburb
    fill_in "User", with: @chef_profile.user_id
    click_on "Create Chef profile"

    assert_text "Chef profile was successfully created"
    click_on "Back"
  end

  test "updating a Chef profile" do
    visit chef_profiles_url
    click_on "Edit", match: :first

    fill_in "Contact number", with: @chef_profile.contact_number
    fill_in "Cooking capacity", with: @chef_profile.cooking_capacity
    fill_in "Cooking speciality", with: @chef_profile.cooking_speciality
    fill_in "Email", with: @chef_profile.email
    fill_in "First name", with: @chef_profile.first_name
    fill_in "Food pick up timings", with: @chef_profile.food_pick_up_timings
    fill_in "Last name", with: @chef_profile.last_name
    fill_in "Picture", with: @chef_profile.picture
    fill_in "Postcode", with: @chef_profile.postcode
    fill_in "State", with: @chef_profile.state
    fill_in "Street address", with: @chef_profile.street_address
    fill_in "Suburb", with: @chef_profile.suburb
    fill_in "User", with: @chef_profile.user_id
    click_on "Update Chef profile"

    assert_text "Chef profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Chef profile" do
    visit chef_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chef profile was successfully destroyed"
  end
end
