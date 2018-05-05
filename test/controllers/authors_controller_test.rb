require 'test_helper'

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author = authors(:one)
  end

  test "should show author" do
    get author_url(@author), as: :json
    assert_response :success
  end
end
