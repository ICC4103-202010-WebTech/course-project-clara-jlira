require "application_system_test_case"

class OrganizationFilesTest < ApplicationSystemTestCase
  setup do
    @organization_file = organization_files(:one)
  end

  test "visiting the index" do
    visit organization_files_url
    assert_selector "h1", text: "Organization Files"
  end

  test "creating a Organization file" do
    visit organization_files_url
    click_on "New Organization File"

    fill_in "Index", with: @organization_file.index
    fill_in "Show", with: @organization_file.show
    click_on "Create Organization file"

    assert_text "Organization file was successfully created"
    click_on "Back"
  end

  test "updating a Organization file" do
    visit organization_files_url
    click_on "Edit", match: :first

    fill_in "Index", with: @organization_file.index
    fill_in "Show", with: @organization_file.show
    click_on "Update Organization file"

    assert_text "Organization file was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization file" do
    visit organization_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization file was successfully destroyed"
  end
end
