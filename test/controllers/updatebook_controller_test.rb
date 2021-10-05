require "test_helper"

class UpdatebookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get updatebook_index_url
    assert_response :success
  end
end
