require "test_helper"

class InsertControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get insert_index_url
    assert_response :success
  end
end
