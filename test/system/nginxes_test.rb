require "application_system_test_case"

class NginxesTest < ApplicationSystemTestCase
  setup do
    @nginx = nginxes(:one)
  end

  test "visiting the index" do
    visit nginxes_url
    assert_selector "h1", text: "Nginxes"
  end

  test "creating a Nginx" do
    visit nginxes_url
    click_on "New Nginx"

    fill_in "Content", with: @nginx.content
    fill_in "Title", with: @nginx.title
    click_on "Create Nginx"

    assert_text "Nginx was successfully created"
    click_on "Back"
  end

  test "updating a Nginx" do
    visit nginxes_url
    click_on "Edit", match: :first

    fill_in "Content", with: @nginx.content
    fill_in "Title", with: @nginx.title
    click_on "Update Nginx"

    assert_text "Nginx was successfully updated"
    click_on "Back"
  end

  test "destroying a Nginx" do
    visit nginxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nginx was successfully destroyed"
  end
end
