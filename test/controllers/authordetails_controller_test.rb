require 'test_helper'

class AuthordetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authordetail = authordetails(:one)
  end

  test "should get index" do
    get authordetails_url
    assert_response :success
  end

  test "should get new" do
    get new_authordetail_url
    assert_response :success
  end

  test "should create authordetail" do
    assert_difference('Authordetail.count') do
      post authordetails_url, params: { authordetail: { author_id: @authordetail.author_id, bio: @authordetail.bio, email: @authordetail.email, mobile_No: @authordetail.mobile_No, name: @authordetail.name } }
    end

    assert_redirected_to authordetail_url(Authordetail.last)
  end

  test "should show authordetail" do
    get authordetail_url(@authordetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_authordetail_url(@authordetail)
    assert_response :success
  end

  test "should update authordetail" do
    patch authordetail_url(@authordetail), params: { authordetail: { author_id: @authordetail.author_id, bio: @authordetail.bio, email: @authordetail.email, mobile_No: @authordetail.mobile_No, name: @authordetail.name } }
    assert_redirected_to authordetail_url(@authordetail)
  end

  test "should destroy authordetail" do
    assert_difference('Authordetail.count', -1) do
      delete authordetail_url(@authordetail)
    end

    assert_redirected_to authordetails_url
  end
end
