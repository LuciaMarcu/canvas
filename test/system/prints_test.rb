require "application_system_test_case"

class PrintsTest < ApplicationSystemTestCase
  setup do
    @print = prints(:one)
  end

  test "visiting the index" do
    visit prints_url
    assert_selector "h1", text: "Prints"
  end

  test "creating a Print" do
    visit prints_url
    click_on "New Print"

    fill_in "Description", with: @print.description
    fill_in "Title", with: @print.title
    fill_in "User", with: @print.user_id
    click_on "Create Print"

    assert_text "Print was successfully created"
    click_on "Back"
  end

  test "updating a Print" do
    visit prints_url
    click_on "Edit", match: :first

    fill_in "Description", with: @print.description
    fill_in "Title", with: @print.title
    fill_in "User", with: @print.user_id
    click_on "Update Print"

    assert_text "Print was successfully updated"
    click_on "Back"
  end

  test "destroying a Print" do
    visit prints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Print was successfully destroyed"
  end
end
