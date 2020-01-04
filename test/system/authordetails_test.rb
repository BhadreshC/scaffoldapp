require "application_system_test_case"

class AuthordetailsTest < ApplicationSystemTestCase
  setup do
    @authordetail = authordetails(:one)
  end

  test "visiting the index" do
    visit authordetails_url
    assert_selector "h1", text: "Authordetails"
  end

  test "creating a Authordetail" do
    visit authordetails_url
    click_on "New Authordetail"

    fill_in "Author", with: @authordetail.author_id
    fill_in "Bio", with: @authordetail.bio
    fill_in "Email", with: @authordetail.email
    fill_in "Mobile no", with: @authordetail.mobile_No
    fill_in "Name", with: @authordetail.name
    click_on "Create Authordetail"

    assert_text "Authordetail was successfully created"
    click_on "Back"
  end

  test "updating a Authordetail" do
    visit authordetails_url
    click_on "Edit", match: :first

    fill_in "Author", with: @authordetail.author_id
    fill_in "Bio", with: @authordetail.bio
    fill_in "Email", with: @authordetail.email
    fill_in "Mobile no", with: @authordetail.mobile_No
    fill_in "Name", with: @authordetail.name
    click_on "Update Authordetail"

    assert_text "Authordetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Authordetail" do
    visit authordetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Authordetail was successfully destroyed"
  end
end
