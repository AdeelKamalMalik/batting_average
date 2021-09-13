require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "creating a Team" do
    visit teams_url
    click_on "New Team"

    fill_in "Attendance", with: @team.attendance
    fill_in "Bpf", with: @team.bpf
    fill_in "Div", with: @team.div_id
    fill_in "Div win", with: @team.div_win
    fill_in "Franch", with: @team.franch_id
    fill_in "Ghome", with: @team.ghome
    fill_in "Lg", with: @team.lg_id
    fill_in "Lg win", with: @team.lg_win
    fill_in "Name", with: @team.name
    fill_in "Park", with: @team.park
    fill_in "Ppf", with: @team.ppf
    fill_in "Rank", with: @team.rank
    fill_in "Team i dlahman45", with: @team.team_i_dlahman45
    fill_in "Team i dretro", with: @team.team_i_dretro
    fill_in "Team", with: @team.team_id
    fill_in "Team idrb", with: @team.team_idrb
    fill_in "Wc win", with: @team.wc_win
    fill_in "Ws wing", with: @team.ws_wing
    fill_in "Year", with: @team.year_id
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "updating a Team" do
    visit teams_url
    click_on "Edit", match: :first

    fill_in "Attendance", with: @team.attendance
    fill_in "Bpf", with: @team.bpf
    fill_in "Div", with: @team.div_id
    fill_in "Div win", with: @team.div_win
    fill_in "Franch", with: @team.franch_id
    fill_in "Ghome", with: @team.ghome
    fill_in "Lg", with: @team.lg_id
    fill_in "Lg win", with: @team.lg_win
    fill_in "Name", with: @team.name
    fill_in "Park", with: @team.park
    fill_in "Ppf", with: @team.ppf
    fill_in "Rank", with: @team.rank
    fill_in "Team i dlahman45", with: @team.team_i_dlahman45
    fill_in "Team i dretro", with: @team.team_i_dretro
    fill_in "Team", with: @team.team_id
    fill_in "Team idrb", with: @team.team_idrb
    fill_in "Wc win", with: @team.wc_win
    fill_in "Ws wing", with: @team.ws_wing
    fill_in "Year", with: @team.year_id
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "destroying a Team" do
    visit teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team was successfully destroyed"
  end
end
