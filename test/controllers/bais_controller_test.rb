require 'test_helper'

class BaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bai = bais(:one)
  end

  test "should get index" do
    get bais_url
    assert_response :success
  end

  test "should get new" do
    get new_bai_url
    assert_response :success
  end

  test "should create bai" do
    assert_difference('Bai.count') do
      post bais_url, params: { bai: {  } }
    end

    assert_redirected_to bai_url(Bai.last)
  end

  test "should show bai" do
    get bai_url(@bai)
    assert_response :success
  end

  test "should get edit" do
    get edit_bai_url(@bai)
    assert_response :success
  end

  test "should update bai" do
    patch bai_url(@bai), params: { bai: {  } }
    assert_redirected_to bai_url(@bai)
  end

  test "should destroy bai" do
    assert_difference('Bai.count', -1) do
      delete bai_url(@bai)
    end

    assert_redirected_to bais_url
  end
end
