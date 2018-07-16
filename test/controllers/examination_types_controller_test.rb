require 'test_helper'

class ExaminationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examination_type = examination_types(:one)
  end

  test "should get index" do
    get examination_types_url
    assert_response :success
  end

  test "should get new" do
    get new_examination_type_url
    assert_response :success
  end

  test "should create examination_type" do
    assert_difference('ExaminationType.count') do
      post examination_types_url, params: { examination_type: { name: @examination_type.name } }
    end

    assert_redirected_to examination_type_url(ExaminationType.last)
  end

  test "should show examination_type" do
    get examination_type_url(@examination_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_examination_type_url(@examination_type)
    assert_response :success
  end

  test "should update examination_type" do
    patch examination_type_url(@examination_type), params: { examination_type: { name: @examination_type.name } }
    assert_redirected_to examination_type_url(@examination_type)
  end

  test "should destroy examination_type" do
    assert_difference('ExaminationType.count', -1) do
      delete examination_type_url(@examination_type)
    end

    assert_redirected_to examination_types_url
  end
end
