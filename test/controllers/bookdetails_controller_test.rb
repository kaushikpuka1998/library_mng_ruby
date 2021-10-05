require "test_helper"

class BookdetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookdetails_index_url
    assert_response :success
  end
end
