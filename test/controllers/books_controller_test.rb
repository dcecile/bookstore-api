# frozen_string_literal: true

require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url, as: :json
    assert_response :success
  end

  test "should show book" do
    get book_url(@book), as: :json
    assert_response :success
  end
end
