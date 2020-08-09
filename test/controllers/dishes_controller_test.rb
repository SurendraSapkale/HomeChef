require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish = dishes(:one)
  end

  test "should get index" do
    get dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_dish_url
    assert_response :success
  end

  test "should create dish" do
    assert_difference('Dish.count') do
      post dishes_url, params: { dish: { chef_profile_id: @dish.chef_profile_id, cuisine: @dish.cuisine, description: @dish.description, name: @dish.name, picture: @dish.picture, preparation_time: @dish.preparation_time, price: @dish.price, seller_id: @dish.seller_id, special_dietery_details: @dish.special_dietery_details } }
    end

    assert_redirected_to dish_url(Dish.last)
  end

  test "should show dish" do
    get dish_url(@dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_url(@dish)
    assert_response :success
  end

  test "should update dish" do
    patch dish_url(@dish), params: { dish: { chef_profile_id: @dish.chef_profile_id, cuisine: @dish.cuisine, description: @dish.description, name: @dish.name, picture: @dish.picture, preparation_time: @dish.preparation_time, price: @dish.price, seller_id: @dish.seller_id, special_dietery_details: @dish.special_dietery_details } }
    assert_redirected_to dish_url(@dish)
  end

  test "should destroy dish" do
    assert_difference('Dish.count', -1) do
      delete dish_url(@dish)
    end

    assert_redirected_to dishes_url
  end
end
