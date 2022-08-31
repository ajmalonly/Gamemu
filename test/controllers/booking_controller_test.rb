require "test_helper"

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get start_date:date" do
    get booking_start_date:date_url
    assert_response :success
  end

  test "should get end_date:date" do
    get booking_end_date:date_url
    assert_response :success
  end

  test "should get user:references" do
    get booking_user:references_url
    assert_response :success
  end

  test "should get game:references" do
    get booking_game:references_url
    assert_response :success
  end
end
