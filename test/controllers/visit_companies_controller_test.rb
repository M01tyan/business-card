require 'test_helper'

class VisitCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visit_company = visit_companies(:one)
  end

  test "should get index" do
    get visit_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_visit_company_url
    assert_response :success
  end

  test "should create visit_company" do
    assert_difference('VisitCompany.count') do
      post visit_companies_url, params: { visit_company: { company: @visit_company.company, name: @visit_company.name } }
    end

    assert_redirected_to visit_company_url(VisitCompany.last)
  end

  test "should show visit_company" do
    get visit_company_url(@visit_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_visit_company_url(@visit_company)
    assert_response :success
  end

  test "should update visit_company" do
    patch visit_company_url(@visit_company), params: { visit_company: { company: @visit_company.company, name: @visit_company.name } }
    assert_redirected_to visit_company_url(@visit_company)
  end

  test "should destroy visit_company" do
    assert_difference('VisitCompany.count', -1) do
      delete visit_company_url(@visit_company)
    end

    assert_redirected_to visit_companies_url
  end
end
