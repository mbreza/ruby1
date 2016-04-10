require 'test_helper'

class ListOfStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_of_student = list_of_students(:one)
  end

  test "should get index" do
    get list_of_students_url
    assert_response :success
  end

  test "should get new" do
    get new_list_of_student_url
    assert_response :success
  end

  test "should create list_of_student" do
    assert_difference('ListOfStudent.count') do
      post list_of_students_url, params: { list_of_student: { desc: @list_of_student.desc, lang: @list_of_student.lang, src: @list_of_student.src } }
    end

    assert_redirected_to list_of_student_path(ListOfStudent.last)
  end

  test "should show list_of_student" do
    get list_of_student_url(@list_of_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_of_student_url(@list_of_student)
    assert_response :success
  end

  test "should update list_of_student" do
    patch list_of_student_url(@list_of_student), params: { list_of_student: { desc: @list_of_student.desc, lang: @list_of_student.lang, src: @list_of_student.src } }
    assert_redirected_to list_of_student_path(@list_of_student)
  end

  test "should destroy list_of_student" do
    assert_difference('ListOfStudent.count', -1) do
      delete list_of_student_url(@list_of_student)
    end

    assert_redirected_to list_of_students_path
  end
end
