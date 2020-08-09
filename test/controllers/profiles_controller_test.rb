require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { contact_number: @profile.contact_number, email: @profile.email, first_name: @profile.first_name, last_name: @profile.last_name, postcode: @profile.postcode, state: @profile.state, street_address: @profile.street_address, suburb: @profile.suburb, user_id: @profile.user_id, your_food_preference: @profile.your_food_preference } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { contact_number: @profile.contact_number, email: @profile.email, first_name: @profile.first_name, last_name: @profile.last_name, postcode: @profile.postcode, state: @profile.state, street_address: @profile.street_address, suburb: @profile.suburb, user_id: @profile.user_id, your_food_preference: @profile.your_food_preference } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
