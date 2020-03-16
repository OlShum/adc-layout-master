require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  setup do
    @page = pages(:one)
  end

  test "visiting the index" do
    visit pages_url
    assert_selector "h1", text: "Pages"
  end

  test "creating a Page" do
    visit pages_url
    click_on "New Page"

    fill_in "Author", with: @page.author
    fill_in "Cover", with: @page.cover
    fill_in "Description", with: @page.description
    fill_in "Head", with: @page.head
    fill_in "Lead", with: @page.lead
    fill_in "Share", with: @page.share
    fill_in "Tag", with: @page.tag
    fill_in "Type", with: @page.type
    click_on "Create Page"

    assert_text "Page was successfully created"
    click_on "Back"
  end

  test "updating a Page" do
    visit pages_url
    click_on "Edit", match: :first

    fill_in "Author", with: @page.author
    fill_in "Cover", with: @page.cover
    fill_in "Description", with: @page.description
    fill_in "Head", with: @page.head
    fill_in "Lead", with: @page.lead
    fill_in "Share", with: @page.share
    fill_in "Tag", with: @page.tag
    fill_in "Type", with: @page.type
    click_on "Update Page"

    assert_text "Page was successfully updated"
    click_on "Back"
  end

  test "destroying a Page" do
    visit pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page was successfully destroyed"
  end
end
