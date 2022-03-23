require "application_system_test_case"

class HellosTest < ApplicationSystemTestCase
  setup do
    @hello = hellos(:one)
  end

  test "visiting the index" do
    visit hellos_url
    assert_selector "h1", text: "Hellos"
  end

  test "creating a Hello" do
    visit hellos_url
    click_on "New Hello"

    click_on "Create Hello"

    assert_text "Hello was successfully created"
    click_on "Back"
  end

  test "updating a Hello" do
    visit hellos_url
    click_on "Edit", match: :first

    click_on "Update Hello"

    assert_text "Hello was successfully updated"
    click_on "Back"
  end

  test "destroying a Hello" do
    visit hellos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hello was successfully destroyed"
  end
end
