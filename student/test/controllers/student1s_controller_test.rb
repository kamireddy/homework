require 'test_helper'

class Student1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student1 = student1s(:one)
  end

  test "should get index" do
    get student1s_url
    assert_response :success
  end

  test "should get new" do
    get new_student1_url
    assert_response :success
  end

  test "should create student1" do
    assert_difference('Student1.count') do
      post student1s_url, params: { student1: { address: @student1.address, age: @student1.age, gender: @student1.gender, name: @student1.name } }
    end

    assert_redirected_to student1_url(Student1.last)
  end

  test "should show student1" do
    get student1_url(@student1)
    assert_response :success
  end

  test "should get edit" do
    get edit_student1_url(@student1)
    assert_response :success
  end

  test "should update student1" do
    patch student1_url(@student1), params: { student1: { address: @student1.address, age: @student1.age, gender: @student1.gender, name: @student1.name } }
    assert_redirected_to student1_url(@student1)
  end

  test "should destroy student1" do
    assert_difference('Student1.count', -1) do
      delete student1_url(@student1)
    end

    assert_redirected_to student1s_url
  end
end
