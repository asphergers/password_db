require "test_helper"

class PasswordInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @password_info = password_infos(:one)
  end

  test "should get index" do
    get password_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_password_info_url
    assert_response :success
  end

  test "should create password_info" do
    assert_difference("PasswordInfo.count") do
      post password_infos_url, params: { password_info: { date_added: @password_info.date_added, password: @password_info.password, username: @password_info.username, website: @password_info.website } }
    end

    assert_redirected_to password_info_url(PasswordInfo.last)
  end

  test "should show password_info" do
    get password_info_url(@password_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_password_info_url(@password_info)
    assert_response :success
  end

  test "should update password_info" do
    patch password_info_url(@password_info), params: { password_info: { date_added: @password_info.date_added, password: @password_info.password, username: @password_info.username, website: @password_info.website } }
    assert_redirected_to password_info_url(@password_info)
  end

  test "should destroy password_info" do
    assert_difference("PasswordInfo.count", -1) do
      delete password_info_url(@password_info)
    end

    assert_redirected_to password_infos_url
  end
end
