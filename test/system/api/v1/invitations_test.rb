require "application_system_test_case"

class Api::V1::InvitationsTest < ApplicationSystemTestCase
  setup do
    @api_v1_invitation = api_v1_invitations(:one)
  end

  test "visiting the index" do
    visit api_v1_invitations_url
    assert_selector "h1", text: "Api/V1/Invitations"
  end

  test "creating a Invitation" do
    visit api_v1_invitations_url
    click_on "New Api/V1/Invitation"

    fill_in "Index", with: @api_v1_invitation.index
    fill_in "Show", with: @api_v1_invitation.show
    click_on "Create Invitation"

    assert_text "Invitation was successfully created"
    click_on "Back"
  end

  test "updating a Invitation" do
    visit api_v1_invitations_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_invitation.index
    fill_in "Show", with: @api_v1_invitation.show
    click_on "Update Invitation"

    assert_text "Invitation was successfully updated"
    click_on "Back"
  end

  test "destroying a Invitation" do
    visit api_v1_invitations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invitation was successfully destroyed"
  end
end
