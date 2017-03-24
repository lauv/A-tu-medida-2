require 'test_helper'

class DesignerApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @designer_application = designer_applications(:one)
  end

  test "should get index" do
    get designer_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_designer_application_url
    assert_response :success
  end

  test "should create designer_application" do
    assert_difference('DesignerApplication.count') do
      post designer_applications_url, params: { designer_application: { about: @designer_application.about, address: @designer_application.address, birthday: @designer_application.birthday, degree: @designer_application.degree, education_level: @designer_application.education_level, email: @designer_application.email, name: @designer_application.name, rut: @designer_application.rut, status: @designer_application.status, years_of_experience: @designer_application.years_of_experience } }
    end

    assert_redirected_to designer_application_url(DesignerApplication.last)
  end

  test "should show designer_application" do
    get designer_application_url(@designer_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_designer_application_url(@designer_application)
    assert_response :success
  end

  test "should update designer_application" do
    patch designer_application_url(@designer_application), params: { designer_application: { about: @designer_application.about, address: @designer_application.address, birthday: @designer_application.birthday, degree: @designer_application.degree, education_level: @designer_application.education_level, email: @designer_application.email, name: @designer_application.name, rut: @designer_application.rut, status: @designer_application.status, years_of_experience: @designer_application.years_of_experience } }
    assert_redirected_to designer_application_url(@designer_application)
  end

  test "should destroy designer_application" do
    assert_difference('DesignerApplication.count', -1) do
      delete designer_application_url(@designer_application)
    end

    assert_redirected_to designer_applications_url
  end
end
