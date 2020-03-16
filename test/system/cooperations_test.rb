require "application_system_test_case"

class CooperationsTest < ApplicationSystemTestCase
  setup do
    @cooperation = cooperations(:one)
  end

  test "visiting the index" do
    visit cooperations_url
    assert_selector "h1", text: "Cooperations"
  end

  test "creating a Cooperation" do
    visit cooperations_url
    click_on "New Cooperation"

    fill_in "Company", with: @cooperation.company
    fill_in "Email", with: @cooperation.email
    click_on "Create Cooperation"

    assert_text "Cooperation was successfully created"
    click_on "Back"
  end

  test "updating a Cooperation" do
    visit cooperations_url
    click_on "Edit", match: :first

    fill_in "Company", with: @cooperation.company
    fill_in "Email", with: @cooperation.email
    click_on "Update Cooperation"

    assert_text "Cooperation was successfully updated"
    click_on "Back"
  end

  test "destroying a Cooperation" do
    visit cooperations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cooperation was successfully destroyed"
  end
end
