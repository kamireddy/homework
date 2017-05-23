require 'test_helper'

class Ticket3sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ticket3s_index_url
    assert_response :success
  end

  test "should get show" do
    get ticket3s_show_url
    assert_response :success
  end

end
