require "application_system_test_case"

class VisitCompaniesTest < ApplicationSystemTestCase
  setup do
    @visit_company = visit_companies(:one)
  end

  test "visiting the index" do
    visit visit_companies_url
    assert_selector "h1", text: "Visit Companies"
  end

  test "creating a Visit company" do
    visit visit_companies_url
    click_on "New Visit Company"

    fill_in "Company", with: @visit_company.company
    fill_in "Name", with: @visit_company.name
    click_on "Create Visit company"

    assert_text "Visit company was successfully created"
    click_on "Back"
  end

  test "updating a Visit company" do
    visit visit_companies_url
    click_on "Edit", match: :first

    fill_in "Company", with: @visit_company.company
    fill_in "Name", with: @visit_company.name
    click_on "Update Visit company"

    assert_text "Visit company was successfully updated"
    click_on "Back"
  end

  test "destroying a Visit company" do
    visit visit_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visit company was successfully destroyed"
  end
end
