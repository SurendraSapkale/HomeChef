require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get order_page_url
    assert_response :success
  end

end
