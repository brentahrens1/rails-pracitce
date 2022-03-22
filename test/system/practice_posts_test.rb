require "application_system_test_case"

class PracticePostsTest < ApplicationSystemTestCase
  setup do
    @practice_post = practice_posts(:one)
  end

  test "visiting the index" do
    visit practice_posts_url
    assert_selector "h1", text: "Practice Posts"
  end

  test "creating a Practice post" do
    visit practice_posts_url
    click_on "New Practice Post"

    click_on "Create Practice post"

    assert_text "Practice post was successfully created"
    click_on "Back"
  end

  test "updating a Practice post" do
    visit practice_posts_url
    click_on "Edit", match: :first

    click_on "Update Practice post"

    assert_text "Practice post was successfully updated"
    click_on "Back"
  end

  test "destroying a Practice post" do
    visit practice_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Practice post was successfully destroyed"
  end
end
