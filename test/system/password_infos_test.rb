require "application_system_test_case"

class PasswordInfosTest < ApplicationSystemTestCase
  setup do
    @password_info = password_infos(:one)
  end

  test "visiting the index" do
    visit password_infos_url
    assert_selector "h1", text: "Password infos"
  end

  test "should create password info" do
    visit password_infos_url
    click_on "New password info"

    fill_in "Date added", with: @password_info.date_added
    fill_in "Password", with: @password_info.password
    fill_in "Username", with: @password_info.username
    fill_in "Website", with: @password_info.website
    click_on "Create Password info"

    assert_text "Password info was successfully created"
    click_on "Back"
  end

  test "should update Password info" do
    visit password_info_url(@password_info)
    click_on "Edit this password info", match: :first

    fill_in "Date added", with: @password_info.date_added
    fill_in "Password", with: @password_info.password
    fill_in "Username", with: @password_info.username
    fill_in "Website", with: @password_info.website
    click_on "Update Password info"

    assert_text "Password info was successfully updated"
    click_on "Back"
  end

  test "should destroy Password info" do
    visit password_info_url(@password_info)
    click_on "Destroy this password info", match: :first

    assert_text "Password info was successfully destroyed"
  end
end
