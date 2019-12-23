require 'test_helper'

class BookstoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookstore = bookstores(:one)
  end

  test "should get index" do
    get bookstores_url
    assert_response :success
  end

  test "should get new" do
    get new_bookstore_url
    assert_response :success
  end

  test "should create bookstore" do
    assert_difference('Bookstore.count') do
      post bookstores_url, params: { bookstore: { ISBN: @bookstore.ISBN, author: @bookstore.author, price: @bookstore.price, publishedyear: @bookstore.publishedyear, title: @bookstore.title } }
    end

    assert_redirected_to bookstore_url(Bookstore.last)
  end

  test "should show bookstore" do
    get bookstore_url(@bookstore)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookstore_url(@bookstore)
    assert_response :success
  end

  test "should update bookstore" do
    patch bookstore_url(@bookstore), params: { bookstore: { ISBN: @bookstore.ISBN, author: @bookstore.author, price: @bookstore.price, publishedyear: @bookstore.publishedyear, title: @bookstore.title } }
    assert_redirected_to bookstore_url(@bookstore)
  end

  test "should destroy bookstore" do
    assert_difference('Bookstore.count', -1) do
      delete bookstore_url(@bookstore)
    end

    assert_redirected_to bookstores_url
  end
end
