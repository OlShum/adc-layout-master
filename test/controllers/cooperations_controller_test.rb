require 'test_helper'

class CooperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cooperation = cooperations(:one)
  end

  test "should get index" do
    get cooperations_url
    assert_response :success
  end

  test "should get new" do
    get new_cooperation_url
    assert_response :success
  end

  test "should create cooperation" do
    assert_difference('Cooperation.count') do
      post cooperations_url, params: { cooperation: { company: @cooperation.company, email: @cooperation.email } }
    end

    assert_redirected_to cooperation_url(Cooperation.last)
  end

  test "should show cooperation" do
    get cooperation_url(@cooperation)
    assert_response :success
  end

  test "should get edit" do
    get edit_cooperation_url(@cooperation)
    assert_response :success
  end

  test "should update cooperation" do
    patch cooperation_url(@cooperation), params: { cooperation: { company: @cooperation.company, email: @cooperation.email } }
    assert_redirected_to cooperation_url(@cooperation)
  end

  test "should destroy cooperation" do
    assert_difference('Cooperation.count', -1) do
      delete cooperation_url(@cooperation)
    end

    assert_redirected_to cooperations_url
  end
end
