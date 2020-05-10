require "application_system_test_case"

class Api::V1::MembershipsTest < ApplicationSystemTestCase
  setup do
    @api_v1_membership = api_v1_memberships(:one)
  end

  test "visiting the index" do
    visit api_v1_memberships_url
    assert_selector "h1", text: "Api/V1/Memberships"
  end

  test "creating a Membership" do
    visit api_v1_memberships_url
    click_on "New Api/V1/Membership"

    fill_in "Index", with: @api_v1_membership.index
    fill_in "Show", with: @api_v1_membership.show
    click_on "Create Membership"

    assert_text "Membership was successfully created"
    click_on "Back"
  end

  test "updating a Membership" do
    visit api_v1_memberships_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_membership.index
    fill_in "Show", with: @api_v1_membership.show
    click_on "Update Membership"

    assert_text "Membership was successfully updated"
    click_on "Back"
  end

  test "destroying a Membership" do
    visit api_v1_memberships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Membership was successfully destroyed"
  end
end
